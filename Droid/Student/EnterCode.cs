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
using Android.Views;
using Android.Widget;
using BeaconTest.Droid.Student;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "EnterCode", ScreenOrientation = ScreenOrientation.Portrait)]
    public class EnterCode : Activity, IDialogInterfaceOnDismissListener, IBeaconConsumer
    {
        readonly RangeNotifier rangeNotifier;
        readonly MonitorNotifier monitorNotifier;
        readonly List<Beacon> data;

        /*const ushort beaconMajor = 2755;
        const ushort beaconMinor = 5;
        const string beaconId = "123";
        const string uuid = "C9407F30-F5F8-466E-AFF9-25556B57FE6D";*/
        string uuid = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5";

        Region tagRegion, emptyRegion;

        BeaconManager beaconManager;

        StudentTimetable studentTimetable;
        StudentModule studentModule;
        ImageView studentAttendanceImageView;
        EditText attendanceCodeEditText;

        TextView moduleNameTextView, timeTextView, locationTextView, enterAttendanceCodeTextView;
        Button submitBtn;

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
            uuid = DataAccess.StudentGetBeaconKey();

            moduleNameTextView = FindViewById<TextView>(Resource.Id.moduleNameTextView);
            timeTextView = FindViewById<TextView>(Resource.Id.timeTextView);
            locationTextView = FindViewById<TextView>(Resource.Id.locationTextView);
            studentAttendanceImageView = FindViewById<ImageView>(Resource.Id.studentAttendanceImageView);
            attendanceCodeEditText = FindViewById<EditText>(Resource.Id.attendanceCodeEditText);
            enterAttendanceCodeTextView = FindViewById<TextView>(Resource.Id.enterAttendanceCodeTextView);

            enterAttendanceCodeTextView.Click += delegate
            {
                attendanceCodeEditText.Visibility = ViewStates.Visible;
            };

            submitBtn = FindViewById<Button>(Resource.Id.submitBtn);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());

            VerifyBle();
        }

        private void GetModule()
        {
            studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
            studentModule = studentTimetable.GetCurrentModule();

            if (studentModule != null)
            {
                RunOnUiThread(() => {
                    moduleNameTextView.Text = studentModule.abbr + " (" + studentModule.code + ")";
                    timeTextView.Text = studentModule.time;
                    locationTextView.Text = studentModule.location;
                    UserDialogs.Instance.HideLoading();
                });

                SetupBeaconRanger();
                beaconManager = BeaconManager.GetInstanceForApplication(this);
                BeaconTransmitter bTransmitter = new BeaconTransmitter(); // check the power later
                bTransmitter.Transmit();
            }
            else
            {
                RunOnUiThread(() => {
                    moduleNameTextView.Text = "No lessons today";
                    timeTextView.Visibility = ViewStates.Gone;
                    locationTextView.Visibility = ViewStates.Gone;
                    studentAttendanceImageView.Visibility = ViewStates.Gone;
                    attendanceCodeEditText.Visibility = ViewStates.Gone;
                    UserDialogs.Instance.HideLoading();
                });
            }
        }

        private void VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                //var builder = new AlertDialog.Builder(this);
                //builder.SetTitle("Bluetooth not enabled");
                //builder.SetMessage("Please enable bluetooth on your phone and restart the app");
                //EventHandler<DialogClickEventArgs> handler = null;
                //builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                //builder.SetOnDismissListener(this);
                //builder.Show();
                StartActivity(typeof(StudentBluetoothOff));
            }
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

        //ranging prob for s9, sometimes shows not in range even though transmitter is transmitting
        async void RangingBeaconsInRegion(object sender, RangeEventArgs e)
        {
            //var allBeacons = new List<Beacon>();

            //code inside Task.Run will be called asynchronously
            //use await if need to wait for specific work before updating ui elements
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    if (e.Beacons.Count > 0)
                    {
                        /*continue beacon operations in the background, so that the view will continue 
                         displaying to the user*/
                        //beaconManager.SetBackgroundMode(false);
                        string id = e.Beacons.First().Id1.ToString();
                        foreach (Beacon beacon in e.Beacons)
                        {
                            if (beacon.Id1.ToString().Equals(DataAccess.LecturerGetBeaconKey().ToLower()))
                            {
                                string atsCode = beacon.Id2.ToString() + beacon.Id3.ToString();
                                Console.WriteLine(atsCode);
                                submitBtn.Visibility = ViewStates.Visible;
                                studentAttendanceImageView.SetImageDrawable(GetDrawable(Resource.Drawable.Asset2));
                                attendanceCodeEditText.Visibility = ViewStates.Visible;
                                attendanceCodeEditText.Text = atsCode;
                                attendanceCodeEditText.Enabled = false;
                            }
                        }

                        submitBtn.Click += delegate
                        {
                            //AlertDialog.Builder ad = new AlertDialog.Builder(this);
                            //ad.SetTitle("Success");
                            //ad.SetMessage("You have successfully submitted your attendance!");
                            //ad.SetPositiveButton("OK", delegate
                            //{
                            //    ad.Dispose();
                            //});
                            //ad.Show();
                            //SubmitATS();
                        };
                    }
                    else
                    {
                        //SetupBeaconRanger();
                        ////beaconManager = BeaconManager.GetInstanceForApplication(this);

                        ////for not within range
                        //SetContentView(Resource.Layout.NotWithinRange);
                        //Button retryButton = FindViewById<Button>(Resource.Id.retryButton);
                        //retryButton.Visibility = ViewStates.Invisible;

                        //if(e.Beacons.Count > 0)
                        //{
                        //    retryButton.Visibility = ViewStates.Visible;
                        //    retryButton.Click += RetryButtonOnClick;
                        //}

                        //stop all beacon operation in the background
                        //beaconManager.SetBackgroundMode(false);

                        //beaconManager.StopMonitoringBeaconsInRegion(tagRegion);
                        //beaconManager.StopMonitoringBeaconsInRegion(emptyRegion);
                        //beaconManager.StopRangingBeaconsInRegion(tagRegion);
                        //beaconManager.StopRangingBeaconsInRegion(emptyRegion);
                        StartActivity(typeof(NotWithinRange));
                    }
                });
            });
        }

        private void RetryButtonOnClick(object sender, EventArgs e)
        {
            //reload entercode activity
            Finish();
            StartActivity(typeof(EnterCode));
        }

        private void SubmitATS()
        {
            //studentSubmit = new StudentSubmission(admissionId, lb.BeaconKey, ats_Code, DateTime.UtcNow);

        }

        public void OnDismiss(IDialogInterface dialog)
        {
            Finish();
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

            //Console.WriteLine("Debug getting beacon uuid from database:" + lb.BeaconKey.ToString());
            //Console.WriteLine("Major key" + lb.Major.ToString());
            //Console.WriteLine("Minor key" + lb.Minor.ToString());
        }

        //executed after oncreate
        public void OnBeaconServiceConnect()
        {
            tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
                Identifier.Parse(DataAccess.LecturerGetBeaconKey()), null, null);
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

            //Console.WriteLine("Debug:" + Identifier.Parse(uuid));
        }
    }
}