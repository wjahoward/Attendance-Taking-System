using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Student
{
    [Activity(Label = "NotWithinRange", ScreenOrientation = ScreenOrientation.Portrait)]
    public class NotWithinRange : Activity, IDialogInterfaceOnDismissListener, IBeaconConsumer
    {
        readonly RangeNotifier rangeNotifier;
        readonly MonitorNotifier monitorNotifier;
        //readonly List<Beacon> data;

        string uuid = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5";

        Region tagRegion, emptyRegion;

        private BeaconManager beaconManager = null;

        Button retryButton;

        public NotWithinRange()
        {
            rangeNotifier = new RangeNotifier();
            monitorNotifier = new MonitorNotifier();
            //data = new List<Beacon>();
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.NotWithinRange);
            base.OnCreate(savedInstanceState);
            uuid = DataAccess.StudentGetBeaconKey();
            retryButton = FindViewById<Button>(Resource.Id.retryButton);
            retryButton.Visibility = ViewStates.Invisible;

            ThreadPool.QueueUserWorkItem(o => SetupBeaconRanger());
            VerifyBle();
        }

        private void VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                StartActivity(typeof(StudentBluetoothOff));
            }
        }

        public bool BindService(Intent p0, IServiceConnection p1, int p2)
        {
            return true;
        }

        async void RangingBeaconsInRegion(object sender, RangeEventArgs e)
        {
            await Task.Run(() =>
            {
                if (e.Beacons.Count > 0)
                {
                    foreach (Beacon b in e.Beacons)
                    {
                        if (b.Id1.ToString().Equals(DataAccess.LecturerGetBeaconKey().ToLower()))
                        {
                            RunOnUiThread(() =>
                            {
                                retryButton.Visibility = ViewStates.Visible;
                                retryButton.Click += RetryButtonOnClick;
                            });
                        }
                    }
                }
            });
        }

        private void DeterminedStateForRegionComplete(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("I have just switched from seeing/not seeing beacons: " + e.State);
            Console.WriteLine("Not Within Range Activity: I have just switched from seeing/not seeing beacons: " + e.State);
        }

        private void ExitedRegion(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("They went away :(");
            Console.WriteLine("Not Within Range Activity: No beacons detected");
        }

        private void EnteredRegion(object sender, MonitorEventArgs e)
        {
            //await UpdateDisplay("A new beacon just showed up!");
            Console.WriteLine("Not Within Range Activity: A new beacon is detected");
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            Finish();
        }

        async void RetryButtonOnClick(object sender, EventArgs e)
        {
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    StartActivity(typeof(EnterCode));
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

            //Console.WriteLine("Debug getting beacon uuid from database:" + lb.BeaconKey.ToString());
            //Console.WriteLine("Major key" + lb.Major.ToString());
            //Console.WriteLine("Minor key" + lb.Minor.ToString());
        }

        public void OnBeaconServiceConnect()
        {
            tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
                Identifier.Parse(DataAccess.LecturerGetBeaconKey()), null, null);
            emptyRegion = new AltBeaconOrg.BoundBeacon.Region("myEmptyBeaconId", null, null, null);

            beaconManager.SetBackgroundBetweenScanPeriod(5000); // 5000 milliseconds
            beaconManager.SetMonitorNotifier(monitorNotifier);
            beaconManager.StartMonitoringBeaconsInRegion(tagRegion);
            beaconManager.StartMonitoringBeaconsInRegion(emptyRegion);

            beaconManager.SetForegroundBetweenScanPeriod(5000); // 5000 milliseconds
            beaconManager.SetRangeNotifier(rangeNotifier);
            beaconManager.StartRangingBeaconsInRegion(tagRegion);
            beaconManager.StartRangingBeaconsInRegion(emptyRegion);

            //beaconManager.SetBackgroundMode(true);
        }
    }
}