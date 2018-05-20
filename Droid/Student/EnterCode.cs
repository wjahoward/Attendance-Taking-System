using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "EnterCode", LaunchMode = Android.Content.PM.LaunchMode.SingleInstance)]
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

        String admissionId, ats_Code;

        AltBeaconOrg.BoundBeacon.Region tagRegion, emptyRegion;

        BeaconManager beaconManager;

        LecturerBeacon lb;
        StudentSubmission studentSubmit;

        public EnterCode()
        {
            rangeNotifier = new RangeNotifier();
            monitorNotifier = new MonitorNotifier();
            data = new List<Beacon>();
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            admissionId = "p1234567";
            ats_Code = "345678";
            uuid = DataAccess.StudentGetBeaconKey();

            VerifyBle();

            beaconManager = BeaconManager.GetInstanceForApplication(this);

            //lb = DataAccess.StudentGetBeacon().Result;

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

        //potential prob here
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
                        SetContentView(Resource.Layout.EnterCode);
                        /*continue beacon operations in the background, so that the view will continue 
                         displaying to the user*/
                        beaconManager.SetBackgroundMode(true);

                        Button submitBtn = FindViewById<Button>(Resource.Id.submitBtn);

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
                            SubmitATS();
                        };
                    }
                    else
                    {
                        SetContentView(Resource.Layout.NotWithinRange);
                        //stop all beacon operation in the background
                        beaconManager.SetBackgroundMode(false);
                    }
                });
            });
        }

        private void SubmitATS()
        {
            studentSubmit = new StudentSubmission(admissionId, lb.BeaconKey, ats_Code, DateTime.UtcNow);

            bool isSubmitted = DataAccess.StudentSubmitATS(studentSubmit).Result;

            Console.WriteLine("Result" + DataAccess.StudentSubmitATS(studentSubmit).Result);

            if (isSubmitted)
            {
                AlertDialog.Builder ad = new AlertDialog.Builder(this);
                ad.SetTitle("Success");
                ad.SetMessage("You have successfully submitted your attendance at " + DateTime.UtcNow);
                ad.SetPositiveButton("OK", delegate
                {
                    ad.Dispose();
                });
                ad.Show();
            }
            else
            {
                AlertDialog.Builder ad = new AlertDialog.Builder(this);
                ad.SetTitle("Error");
                ad.SetMessage("There was an error in submitting your attendance");
                ad.SetPositiveButton("OK", delegate
                {
                    ad.Dispose();
                });
                ad.Show();
            }
        }

        /*async Task UpdateUI()
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
                        ad.SetPositiveButton("OK", delegate
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
        }/*

        /*async Task UpdateData(List<Beacon> beacons)
        {
            await Task.Run(() =>
            {
                foreach (var beacon in beacons)
                {
                    if(data.Exists(b => b.Id1.ToString() == beacon.Id1.ToString()))
                    {
                        RunOnUiThread(() =>
                        {
                            SetContentView(Resource.Layout.EnterCode);
                        });
                    }
                    else
                    {
                        RunOnUiThread(() =>
                        {
                            SetContentView(Resource.Layout.NotWithinRange);
                        });
                    }
                }
            });
        }*/

        public void OnDismiss(IDialogInterface dialog)
        {
            Finish();
        }

        //executed after oncreate
        public void OnBeaconServiceConnect()
        {
            tagRegion = new AltBeaconOrg.BoundBeacon.Region("myUniqueBeaconId",
                Identifier.Parse(lb.BeaconKey), null, null);
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

            //Console.WriteLine("Debug:" + Identifier.Parse(uuid));
        }
    }
}