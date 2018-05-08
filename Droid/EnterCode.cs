using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid
{
    [Activity(Label = "EnterCode", LaunchMode = Android.Content.PM.LaunchMode.SingleInstance)]
    public class EnterCode : Activity, IDialogInterfaceOnDismissListener, IBeaconConsumer
    {
        readonly RangeNotifier rangeNotifier;
        readonly MonitorNotifier monitorNotifier;

        AltBeaconOrg.BoundBeacon.Region tagRegion, emptyRegion;

        BeaconManager beaconManager;
        //TextView tv;
        //ProgressBar pb;

        public EnterCode()
        {
            rangeNotifier = new RangeNotifier();
            monitorNotifier = new MonitorNotifier();
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            //tv = FindViewById<TextView>(Resource.Id.attCode);

            //pb.Enabled = false;

            //SetContentView(Resource.Layout.EnterCode);

            VerifyBle();

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

        private void VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetTitle("Bluetooth not enabled");
                builder.SetMessage("Please enable bluetooth on your phone and restart the app");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                builder.SetOnDismissListener(this);
                builder.Show();
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

        async void RangingBeaconsInRegion(object sender, RangeEventArgs e)
        {
            if(e.Beacons.Count == 1)
            {
                await UpdateUI();
            }
            else if (e.Beacons.Count == 0)
            {
                await NotWithinRange();
            }
        }

        //may need to debug this
        async Task UpdateUI()
        {
            await Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    SetContentView(Resource.Layout.EnterCode);

                    Button submitBtn = FindViewById<Button>(Resource.Id.submitBtn); 

                    submitBtn.Click += delegate
                    {
                        AlertDialog.Builder ad = new AlertDialog.Builder(this);
                        ad.SetTitle("Success");
                        ad.SetMessage("You have successfully submitted your attendance!");
                        ad.SetNeutralButton("OK", delegate
                        {
                            ad.Dispose();
                        });
                        ad.Show();
                    };
                });
            });
        }

        async Task NotWithinRange()
        {
            //ProgressBar progressBar = FindViewById<ProgressBar>(Resource.Id.progressBarRange);
            //ProgressDialog progress = new ProgressDialog(this);
            //progress.Indeterminate = true;
            //progress.SetProgressStyle(ProgressDialogStyle.Spinner);
            //progress.SetMessage("Loading... Please wait...");
            //progress.SetCancelable(false);

            await Task.Run(() =>
            {
                //pb = FindViewById<ProgressBar>(Resource.Id.progressBarRange);

                RunOnUiThread(() =>
                {
                    //pb.Enabled = true;
                    SetContentView(Resource.Layout.NotWithinRange);
                });
            });
            //pb.Enabled = false;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            Finish();
        }

        public void OnBeaconServiceConnect()
        {
            tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
                Identifier.Parse("2F234454-CF6D-4A0F-ADF2-F4911BA9FFA6"), null, null);
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
        }
    }
}