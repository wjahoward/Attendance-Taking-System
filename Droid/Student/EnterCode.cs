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
    [Activity(Label = "EnterCode", LaunchMode = LaunchMode.SingleTask, ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class EnterCode : Activity, IDialogInterfaceOnDismissListener, IBeaconConsumer
    {
        readonly RangeNotifier rangeNotifier;
        readonly MonitorNotifier monitorNotifier;
        readonly List<Beacon> data;

        //string uuid = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5";

        Region tagRegion, emptyRegion;

        private BeaconManager beaconManager = null;
        InputMethodManager mgr;

        AlertDialog.Builder builder;

        StudentTimetable studentTimetable;
        StudentModule studentModule;
        ImageView studentAttendanceImageView;
        EditText attendanceCodeEditText;

        TextView moduleNameTextView, timeTextView, locationTextView, enterAttendanceCodeTextView, findingBeaconTextView;
        Button submitBtn;

        string lecturerBeaconKey;

        public EnterCode()
        {
            rangeNotifier = new RangeNotifier();
            monitorNotifier = new MonitorNotifier();
            data = new List<Beacon>();
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.EnterCode);

            base.OnCreate(savedInstanceState);

            // Create your application here
            moduleNameTextView = FindViewById<TextView>(Resource.Id.moduleNameTextView);
            timeTextView = FindViewById<TextView>(Resource.Id.timeTextView);
            locationTextView = FindViewById<TextView>(Resource.Id.locationTextView);
            studentAttendanceImageView = FindViewById<ImageView>(Resource.Id.studentAttendanceImageView);
            attendanceCodeEditText = FindViewById<EditText>(Resource.Id.attendanceCodeEditText);
            enterAttendanceCodeTextView = FindViewById<TextView>(Resource.Id.enterAttendanceCodeTextView);
            findingBeaconTextView = FindViewById<TextView>(Resource.Id.findingBeaconTextView);

            submitBtn = FindViewById<Button>(Resource.Id.submitBtn);
            submitBtn.Visibility = ViewStates.Invisible;
            submitBtn.Click += SubmitBtnOnClick;

            CommonClass.threadCheckEnterCode = true;

            mgr = (InputMethodManager)GetSystemService(Context.InputMethodService);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

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

        private void GetModule()
        {
            try
            {
                studentTimetable = DataAccess.GetStudentTimetable().Result;
                studentModule = studentTimetable.GetCurrentModule();

                lecturerBeaconKey = DataAccess.LecturerGetBeaconKey().ToLower();

                if (studentModule != null)
                {
                    RunOnUiThread(() =>
                    {
                        moduleNameTextView.Text = studentModule.abbr + " (" + studentModule.code + ")";
                        timeTextView.Text = studentModule.time;
                        locationTextView.Text = studentModule.location;
                        UserDialogs.Instance.HideLoading();
                    });

                    //CheckBluetoothRechability();

                    if (CommonClass.count <= 3)
                    {
                        SetupBeaconRanger();
                        //CheckBluetoothRechability();
                        Console.WriteLine("Ranging for phone... text");
                        RunOnUiThread(() => findingBeaconTextView.Text = "Ranging for phone...");
                    }
                    else
                    {
                        CantRangeForBeacon();
                    }

                }
                else
                {
                    RunOnUiThread(() =>
                    {
                        moduleNameTextView.Text = "No lessons today";
                        timeTextView.Visibility = ViewStates.Gone;
                        locationTextView.Visibility = ViewStates.Gone;
                        studentAttendanceImageView.Visibility = ViewStates.Gone;
                        attendanceCodeEditText.Visibility = ViewStates.Gone;
                        UserDialogs.Instance.HideLoading();
                    });
                }
            }
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
            else
            {
                GetModule();
            }
        }

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

        /*private void CheckBluetoothRechability()
        {
            Thread checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if(CommonClass.threadCheckEnterCode == true)
            {
                bool isBluetooth = await Task.Run(() => BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    //if (CommonClass.threadCheckEnterCode == true)
                    //{
                    //CommonClass.threadCheckEnterCode = true;
                    RunOnUiThread(() =>
                    {
                        try
                        {
                            Console.WriteLine("Navigate to StudentBluetoothOff");
                            //CommonClass.threadCheckEnterCode = false;
                            //beaconManager.StopRangingBeaconsInRegion(tagRegion);
                            //beaconManager.StopRangingBeaconsInRegion(emptyRegion);
                            //beaconManager.StopMonitoringBeaconsInRegion(tagRegion);
                            //beaconManager.StopMonitoringBeaconsInRegion(emptyRegion);
                            StartActivity(typeof(StudentBluetoothOff));
                            Finish();
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("BluetoothReachability -> CheckBluetoothRechability:" + ex.Message);
                        }
                    });
                    //}
                }
                else
                {
                    //if (CommonClass.count <= 5)
                    //{
                    //    SetupBeaconRanger();
                    //    Console.WriteLine("Ranging for phone... text");
                    //    RunOnUiThread(() => findingBeaconTextView.Text = "Ranging for phone...");
                    //}
                    //else
                    //{
                    //    CantRangeForBeacon();
                    //}
                    //CheckBluetoothAvailable();
                    //NotWithinRange may pop out out of nowhere because it detects bluetooth is on
                    //Find a way to make sure bluetooth is completely on before setting up ranging
                    CommonClass.threadCheckEnterCode = false;
                    await Task.Run(() => SetupBeaconRanger());
                }
            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                return false;
            }
            return true;
        }*/

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckEnterCode = false;
        }

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

            //set the type of beacon we are dealing with
            var iBeaconParser = new BeaconParser();

            //change the beacon layout to suit the transmitter when needed
            iBeaconParser.SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");
            beaconManager.BeaconParsers.Add(iBeaconParser);

            monitorNotifier.EnterRegionComplete += EnteredRegion;
            monitorNotifier.ExitRegionComplete += ExitedRegion;
            monitorNotifier.DetermineStateForRegionComplete += DeterminedStateForRegionComplete;

            rangeNotifier.DidRangeBeaconsInRegionComplete += RangingBeaconsInRegion;

            beaconManager.Bind(this);
        }

        private void DeterminedStateForRegionComplete(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("I have just switched from seeing/not seeing beacons: " + e.State);
            Console.WriteLine("Main Activity: I have just switched from seeing/not seeing beacons: " + e.State);
        }

        private void ExitedRegion(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("They went away :(");
            Console.WriteLine("Main Activity: No beacons detected");
        }

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
            //code inside Task.Run will be called asynchronously
            //use await if need to wait for specific work before updating ui elements
            await Task.Run(() =>
            {
                //if (CommonClass.count <= 3)
                //{
                if (e.Beacons.Count > 0)
                {
                    /*continue beacon operations in the background, so that the view will continue 
                     displaying to the user*/
                    //beaconManager.SetBackgroundMode(true);
                    string id = e.Beacons.First().Id1.ToString();
                    foreach (Beacon beacon in e.Beacons)
                    {
                        //if (beacon.Id1.ToString().Equals(DataAccess.LecturerGetBeaconKey().ToLower()))
                        if (beacon.Id1.ToString().Equals(lecturerBeaconKey))
                        {
                            //string atsCode = beacon.Id2.ToString() + beacon.Id3.ToString();
                            //beaconManager.SetBackgroundMode(true);

                            string atsCode1stHalf = beacon.Id2.ToString();
                            string atsCode2ndHalf = beacon.Id3.ToString();

                            string atsCode1stHalfDecrypted = Decryption(atsCode1stHalf).ToString();
                            string atsCode2ndHalfDecrypted = Decryption(atsCode2ndHalf).ToString();

                            //string atsCode = beacon.Id2.ToString().Substring(0, 1) + "****" + beacon.Id3.ToString().Substring(2);
                            //string atsCode = atsCode1stHalfDecrypted + atsCode2ndHalfDecrypted;
                            string atsCodeHidden = atsCode1stHalfDecrypted.ToString().Substring(0,1) + "****" + atsCode2ndHalfDecrypted.ToString().Substring(2);
                            //Console.WriteLine("ATS code: " + atsCode);

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
                    if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
                    {
                        //stop all monitoring and ranging proccesses
                        beaconManager.StopMonitoringBeaconsInRegion(tagRegion);
                        beaconManager.StopMonitoringBeaconsInRegion(emptyRegion);
                        beaconManager.StopRangingBeaconsInRegion(tagRegion);
                        beaconManager.StopRangingBeaconsInRegion(emptyRegion);

                        GoToBluetoothOff();
                    }
                    else
                    {
                        GoToNotWithinRange();
                    }
                    //GoToNotWithinRange();
                }
            });
        }

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
                //RunOnUiThread(() =>
                //{
                //    //StopThreadingTemporarily();
                //    StartActivity(typeof(NotWithinRange));
                //});
                //Finish();
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
            tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
                Identifier.Parse(lecturerBeaconKey), null, null);
            //tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
            //   Identifier.Parse(lecturerBeaconKey), null, null);
            emptyRegion = new AltBeaconOrg.BoundBeacon.Region("myEmptyBeaconId", null, null, null);

            //need to use set background between scan period for monitoring
            beaconManager.SetBackgroundBetweenScanPeriod(5000); // 5000 milliseconds
            beaconManager.SetMonitorNotifier(monitorNotifier);
            beaconManager.StartMonitoringBeaconsInRegion(tagRegion);
            beaconManager.StartMonitoringBeaconsInRegion(emptyRegion);

            beaconManager.SetForegroundBetweenScanPeriod(5000); // 5000 milliseconds
            beaconManager.SetRangeNotifier(rangeNotifier);
            beaconManager.StartRangingBeaconsInRegion(tagRegion);
            beaconManager.StartRangingBeaconsInRegion(emptyRegion);

            beaconManager.SetBackgroundMode(true);
        }
    }
}