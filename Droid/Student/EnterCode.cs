using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Text;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using BeaconTest.Droid.Student;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    /*This activity uses SingleTask as its launchmode, which means another instance of this activity will not be
     created if there is already an existing instance of this activity. This prevents users from using the 
     recent items button to go back to a previous activity*/
    /*NoHistory prevents new activites from being kept in the history stack*/
    [Activity(Label = "EnterCode", LaunchMode = LaunchMode.SingleTask, ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class EnterCode : Activity, IDialogInterfaceOnDismissListener, IBeaconConsumer
    {
        //for enabling ranging and monitoring in this activity
        readonly RangeNotifier rangeNotifier;
        readonly MonitorNotifier monitorNotifier;

        //used to scan for a beacon with a specific uuid
        Region tagRegion, emptyRegion;

        //this beaconManager handles all beacon related operations, such as starting monitoring and ranging
        private BeaconManager beaconManager = null;

        //for showing and hiding keyboard
        InputMethodManager mgr;

        AlertDialog.Builder builder;

        StudentTimetable studentTimetable;
        StudentModule studentModule;
        ImageView studentAttendanceImageView, lectureHallImageView, timeImageView;
        EditText attendanceCodeEditText;

        TextView moduleNameTextView, moduleCodeTextView, lessonTypeTextView, timeTextView, locationTextView, enterAttendanceCodeTextView, findingBeaconTextView, noLessonTextView;
        Button submitBtn;

        string lecturerBeaconKey;

        public EnterCode()
        {
            rangeNotifier = new RangeNotifier();
            monitorNotifier = new MonitorNotifier();
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.EnterCode);

            base.OnCreate(savedInstanceState);

            // Create your application here
            moduleNameTextView = FindViewById<TextView>(Resource.Id.moduleNameTextView);
            moduleCodeTextView = FindViewById<TextView>(Resource.Id.moduleCodeTextView);
            lessonTypeTextView = FindViewById<TextView>(Resource.Id.lessonTypeTextView);
            timeTextView = FindViewById<TextView>(Resource.Id.timeTextView);
            locationTextView = FindViewById<TextView>(Resource.Id.locationTextView);
            lectureHallImageView = FindViewById<ImageView>(Resource.Id.lectureHallImageView);
            timeImageView = FindViewById<ImageView>(Resource.Id.timeImageView);
            studentAttendanceImageView = FindViewById<ImageView>(Resource.Id.studentAttendanceImageView);
            attendanceCodeEditText = FindViewById<EditText>(Resource.Id.attendanceCodeEditText);
            enterAttendanceCodeTextView = FindViewById<TextView>(Resource.Id.enterAttendanceCodeTextView);
            findingBeaconTextView = FindViewById<TextView>(Resource.Id.findingBeaconTextView);
            noLessonTextView = FindViewById<TextView>(Resource.Id.noLessonTextView);

            submitBtn = FindViewById<Button>(Resource.Id.submitBtn);
            submitBtn.Visibility = ViewStates.Invisible;
            submitBtn.Click += SubmitBtnOnClick;

            //this is for multithreading purposes
            CommonClass.threadCheckEnterCode = true;

            mgr = (InputMethodManager)GetSystemService(Context.InputMethodService);

            //show loading icon when student's module is being loaded
            UserDialogs.Init(this);
            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            //queues the module method for execution
            ThreadPool.QueueUserWorkItem(o => GetModule());

            //VerifyBle();

            //CheckBluetoothRechability();
        }

        //async void VerifyBle()
        //{
        //    await Task.Run(() =>
        //    {
        //        if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
        //        {
        //            RunOnUiThread(() =>
        //            {
        //                StartActivity(typeof(StudentBluetoothOff));
        //            });
        //            Finish();
        //        }
        //    });
        //}

        //for checking if the student has enabled bluetooth on their phone
        private void VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                RunOnUiThread(() =>
                {
                    StartActivity(typeof(StudentBluetoothOff));
                });
                Finish();
            }
        }

        public override void OnBackPressed()
        {
            return;
        }

        protected override void OnResume()
        {
            base.OnResume();
        }

        protected override void OnPause()
        {
            base.OnPause();

            attendanceCodeEditText.ClearFocus();
            //hide the keyboard
            mgr.HideSoftInputFromWindow(attendanceCodeEditText.WindowToken, HideSoftInputFlags.None);
        }

        //getting student's module
        private void GetModule()
        {
            try
            {
                studentTimetable = DataAccess.GetStudentTimetable().Result;
                studentModule = studentTimetable.GetCurrentModule();

                lecturerBeaconKey = DataAccess.LecturerGetBeaconKey().ToLower();

                if (studentModule.abbr != "")
                {
                    RunOnUiThread(() =>
                    {
                        moduleNameTextView.Text = studentModule.abbr;
                        moduleCodeTextView.Text = studentModule.code;
                        lessonTypeTextView.Text = studentModule.type;
                        timeTextView.Text = studentModule.time;
                        locationTextView.Text = studentModule.location;
                        UserDialogs.Instance.HideLoading();
                    });

                    //CheckBluetoothRechability();

                    /*if student has not exceeded a maximum retry of 3 times during ranging for the lecturer's 
                     phone, when this activity is reloaded, set up the ranging and monitoring operations*/ 
                    if (CommonClass.count <= 3)
                    {
                        SetupBeaconRanger();
                        //CheckBluetoothRechability();
                        Console.WriteLine("Ranging for phone... text");
                        RunOnUiThread(() => findingBeaconTextView.Text = "Ranging for phone...");
                    }
                    //activation of contigency plan, where students can key in the ATS code manually.
                    else
                    {
                        CantRangeForBeacon();
                    }

                }
                else
                {
                    RunOnUiThread(() =>
                    {
                        noLessonTextView.Visibility = ViewStates.Visible;
                        moduleNameTextView.Visibility = ViewStates.Gone;
                        moduleCodeTextView.Visibility = ViewStates.Gone;
                        timeTextView.Visibility = ViewStates.Gone;
                        locationTextView.Visibility = ViewStates.Gone;
                        studentAttendanceImageView.Visibility = ViewStates.Gone;
                        attendanceCodeEditText.Visibility = ViewStates.Gone;
                        timeImageView.Visibility = ViewStates.Gone;
                        enterAttendanceCodeTextView.Visibility = ViewStates.Gone;
                        UserDialogs.Instance.HideLoading();
                    });
                }
            }
            //if student did not enable wifi on their device
            catch (Exception ex)
            {
                Console.WriteLine("check network");

                builder = new AlertDialog.Builder(this);
                builder.SetTitle("SP Wifi not enabled");
                builder.SetMessage("Please turn on SP Wifi!");
                builder.SetPositiveButton(Android.Resource.String.Ok, AlertRetryClick);
                builder.SetCancelable(false);
                builder.SetOnDismissListener(this);

                RunOnUiThread(() => builder.Show());
            }
        }

        private void AlertRetryClick(object sender, DialogClickEventArgs e)
        {
            CheckNetworkAvailable();
        }

        private async void CheckNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => this.NetworkRechableOrNot());
            //bool isDialogShowing = false;

            if (!isNetwork)
            {
                RunOnUiThread(() =>
                {
                    try
                    {
                        builder.Show();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("NetworkReachability -> CheckNetworkRechability:" + ex.Message);
                    }
                });
            }
            //if wifi is enabled, reload student's module
            else
            {
                GetModule();
            }
        }

        //checks if the student has enabled wifi on their phone
        private bool NetworkRechableOrNot()
        {
            var wifiManager = Application.Context.GetSystemService(Context.WifiService) as WifiManager;

            if (wifiManager != null)
            {
                // can edit such that it must be connected to SPStaff wifi
                //return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID == "\"SPStudent\"");
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID != "<unknown ssid>");
            }
            return false;
        }

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckEnterCode = false;
        }

        //this method will execute when student fails to detect lecturer's phone after retrying 3 times
        async void CantRangeForBeacon()
        {
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    enterAttendanceCodeTextView.Click += EnterAttendanceCodeTextViewOnClick;

                    findingBeaconTextView.Visibility = ViewStates.Invisible;
                    attendanceCodeEditText.Visibility = ViewStates.Visible;

                    //focusing on edittext and showing keyboard immediately
                    attendanceCodeEditText.RequestFocus();
                    mgr.ShowSoftInput(attendanceCodeEditText, ShowFlags.Forced);
                    mgr.ToggleSoftInput(ShowFlags.Forced, HideSoftInputFlags.ImplicitOnly);

                    submitBtn.Visibility = ViewStates.Invisible;
                    attendanceCodeEditText.TextChanged += AttendanceCodeEditTextChanged;
                });
            });
        }

        async void EnterAttendanceCodeTextViewOnClick(object sender, EventArgs e)
        {
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    attendanceCodeEditText.RequestFocus();
                    //show keyboard after edittext is focused
                    mgr.ShowSoftInput(attendanceCodeEditText, ShowFlags.Implicit);
                    attendanceCodeEditText.TextChanged += AttendanceCodeEditTextChanged;
                });
            });
        }

        async void AttendanceCodeEditTextChanged(object sender, TextChangedEventArgs e)
        {
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    //submit button will only show if student has keyed in 6 digits
                    if (attendanceCodeEditText.Text.Length == 6)
                    {
                        submitBtn.Visibility = ViewStates.Visible;
                    }
                    else
                    {
                        submitBtn.Visibility = ViewStates.Invisible;
                    }
                });
            });
        }

        private void SetupBeaconRanger()
        {
            beaconManager = BeaconManager.GetInstanceForApplication(this);

            //setting the type of beacon we are dealing with
            var iBeaconParser = new BeaconParser();
            /*the byte sequence in the SetBeaconLayout method indicates what type of beacons we are working with,
            in this case this byte sequence represents iBeacon*/
            iBeaconParser.SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");
            beaconManager.BeaconParsers.Add(iBeaconParser);

            //setting up monitoring and ranging methods
            monitorNotifier.EnterRegionComplete += EnteredRegion;
            monitorNotifier.ExitRegionComplete += ExitedRegion;
            monitorNotifier.DetermineStateForRegionComplete += DeterminedStateForRegionComplete;
            rangeNotifier.DidRangeBeaconsInRegionComplete += RangingBeaconsInRegion;

            //binds the current activity to the Beacon Service
            beaconManager.Bind(this);
        }

        //checks if the phone detects a beacon nearby or not
        private void DeterminedStateForRegionComplete(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("I have just switched from seeing/not seeing beacons: " + e.State);
            Console.WriteLine("Main Activity: I have just switched from seeing/not seeing beacons: " + e.State);
        }

        //if no beacon is detected nearby
        private void ExitedRegion(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("They went away :(");
            Console.WriteLine("Main Activity: No beacons detected");
        }

        //if beacons are detected nearby
        private void EnteredRegion(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("A new beacon just showed up!");
            Console.WriteLine("Main Activity: A new beacon is detected");
        }

        public bool BindService(Intent p0, IServiceConnection p1, int p2)
        {
            return true;
        }

        async void SubmitBtnOnClick(object sender, EventArgs e)
        {
            await Task.Run(() =>
            {
                //student is only allowed to submit if they are connected to wifi
                bool isNetworkSubmitAts = this.NetworkRechableOrNot();

                if (!isNetworkSubmitAts)
                {
                    RunOnUiThread(() =>
                    {
                        AlertDialog.Builder ad = new AlertDialog.Builder(this);
                        ad.SetTitle("No wifi connection");
                        ad.SetMessage("Please connect to SP wifi in order to submit your attendance");
                        ad.SetPositiveButton("OK", delegate
                        {
                            ad.Dispose();
                        });
                        ad.Show();
                    });
                }
                else
                {
                    RunOnUiThread(() =>
                    {
                        AlertDialog.Builder ad = new AlertDialog.Builder(this);
                        ad.SetTitle("Success");
                        ad.SetMessage("You have successfully submitted your attendance!");
                        ad.SetPositiveButton("LOGOUT", delegate
                        {
                            ad.Dispose();
                            if (beaconManager != null)
                            {
                                beaconManager.StopRangingBeaconsInRegion(tagRegion);
                                beaconManager.StopRangingBeaconsInRegion(emptyRegion);
                                beaconManager.StopMonitoringBeaconsInRegion(tagRegion);
                                beaconManager.StopMonitoringBeaconsInRegion(emptyRegion);
                            }
                            Finish();
                            //StopThreadingTemporarily();
                            StartActivity(typeof(MainActivity));
                        });
                        ad.Show();
                    });
                }
            });
        }

        async void RangingBeaconsInRegion(object sender, RangeEventArgs e)
        {
            await Task.Run(() =>
            {
                //if beacons are detected
                if (e.Beacons.Count > 0)
                {
                    //beaconManager.SetBackgroundMode(true);
                    string id = e.Beacons.First().Id1.ToString();

                    //loop through all beacons detected
                    foreach (Beacon beacon in e.Beacons)
                    {
                        //if the student's phone detects the lecturer's phone
                        if (beacon.Id1.ToString().Equals(lecturerBeaconKey))
                        {
                            //string atsCode = beacon.Id2.ToString() + beacon.Id3.ToString();

                            //set beacon operations in the background
                            beaconManager.SetBackgroundMode(true);

                            //grabs the encrypted major and minor keys of the detected beacon
                            string atsCode1stHalf = beacon.Id2.ToString();
                            string atsCode2ndHalf = beacon.Id3.ToString();

                            //decrypts the major and minor keys
                            string atsCode1stHalfDecrypted = Decryption(atsCode1stHalf).ToString();
                            string atsCode2ndHalfDecrypted = Decryption(atsCode2ndHalf).ToString();

                            //string atsCode = beacon.Id2.ToString().Substring(0, 1) + "****" + beacon.Id3.ToString().Substring(2);
                            //string atsCode = atsCode1stHalfDecrypted + atsCode2ndHalfDecrypted;

                            //shows only the first and last digit of the ats code
                            string atsCodeHidden = atsCode1stHalfDecrypted.ToString().Substring(0,1) + "****" + atsCode2ndHalfDecrypted.ToString().Substring(2);

                            //updates the UI respectively
                            RunOnUiThread(() =>
                            {
                                submitBtn.Visibility = ViewStates.Visible;
                                studentAttendanceImageView.SetImageDrawable(GetDrawable(Resource.Drawable.Asset2));
                                attendanceCodeEditText.Visibility = ViewStates.Visible;
                                attendanceCodeEditText.Text = atsCodeHidden;
                                attendanceCodeEditText.Enabled = false;
                                findingBeaconTextView.Text = "Detected phone";
                            });
                        }
                    }
                }
                else
                {
                    //if bluetooth is not enabled
                    if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() && CommonClass.count <= 3)
                    {
                        //stop all monitoring and ranging proccesses
                        beaconManager.StopMonitoringBeaconsInRegion(tagRegion);
                        beaconManager.StopMonitoringBeaconsInRegion(emptyRegion);
                        beaconManager.StopRangingBeaconsInRegion(tagRegion);
                        beaconManager.StopRangingBeaconsInRegion(emptyRegion);

                        GoToBluetoothOff();
                    }
                    //if bluetooth is enabled but did not detect any beacons nearby
                    else
                    {
                        GoToNotWithinRange();
                    }
                    //GoToNotWithinRange();
                }
            });
        }

        //for decrypting the encypted ATS code
        private int Decryption(string atscode)
        {
            int numberATSCode = Convert.ToInt32(atscode);
            int newATSCodeEncrypted = (numberATSCode / 7 - 136) / 5;
            return newATSCodeEncrypted;
        }

        async void GoToNotWithinRange()
        {
            await Task.Run(() =>
            {
                //student can only retry 3 times upon unsuccessful detection of lecturer's phone
                if (CommonClass.count <= 3)
                {
                    RunOnUiThread(() =>
                    {
                        StartActivity(typeof(NotWithinRange));
                    });
                    Finish();
                }
            });
        }

        //if student has not enabled bluetooth on their phone
        async void GoToBluetoothOff()
        {
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    StartActivity(typeof(StudentBluetoothOff));
                });
                Finish();
            });
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }

        //executed after oncreate
        public void OnBeaconServiceConnect()
        {
            //scans for uuid transmitted by the lecturer's phone
            tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
                Identifier.Parse(lecturerBeaconKey), null, null);
            emptyRegion = new AltBeaconOrg.BoundBeacon.Region("myEmptyBeaconId", null, null, null);

            //setting up monitoring operations
            beaconManager.SetBackgroundBetweenScanPeriod(5000); // 5000 milliseconds
            beaconManager.SetMonitorNotifier(monitorNotifier);
            beaconManager.StartMonitoringBeaconsInRegion(tagRegion);
            beaconManager.StartMonitoringBeaconsInRegion(emptyRegion);

            //setting up ranging operations
            beaconManager.SetForegroundBetweenScanPeriod(5000); // 5000 milliseconds
            beaconManager.SetRangeNotifier(rangeNotifier);
            beaconManager.StartRangingBeaconsInRegion(tagRegion);
            beaconManager.StartRangingBeaconsInRegion(emptyRegion);

            //set beacon operations in the background
            beaconManager.SetBackgroundMode(true);
        }
    }
}