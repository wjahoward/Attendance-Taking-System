using Android.App;
using Android.Widget;
using Android.OS;
using Android.Content;
using Android.Util;

using AltBeaconOrg.BoundBeacon;
using System.Collections.Generic;
using System;
using Android.Graphics;
using System.Threading.Tasks;
using System.Linq;

namespace IBeaconAR
{
    [Activity(Label = "IBeaconAR", MainLauncher = true, 
        LaunchMode = Android.Content.PM.LaunchMode.SingleInstance)]
    public class MainActivity : Activity, IDialogInterfaceOnDismissListener, IBeaconConsumer
    {
        readonly RangeNotifier rangeNotifier;
        readonly MonitorNotifier monitorNotifier;

        AltBeaconOrg.BoundBeacon.Region tagRegion, emptyRegion;

        Button stopButton, startButton;
        ListView list;
        BeaconManager beaconManager;
        readonly List<Beacon> data;
        ListSource adapter;

        public MainActivity()
        {
            rangeNotifier = new RangeNotifier();
            monitorNotifier = new MonitorNotifier();
            data = new List<Beacon>();
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            stopButton = FindViewById<Button>(Resource.Id.stopButton);
            startButton = FindViewById<Button>(Resource.Id.startButton);
            list = FindViewById<ListView>(Resource.Id.list);

            adapter = new ListSource((data, position, convertView, parent) =>
            {
                var view = convertView;
                var beacon = data[position];

                if (view == null)
                {
                    view = LayoutInflater.Inflate(Resource.Layout.ListItem, parent, false);
                }

                view.FindViewById<TextView>(Resource.Id.beaconId).Text = beacon.Id1.ToString().ToUpper();
                //{0:N2} --> formats distance with 2 decimal places
                view.FindViewById<TextView>(Resource.Id.beaconDistance).Text = string.Format("{0:N2}m",
                    beacon.Distance);

                //testing purposes
                if (beacon.Distance <= .5)
                {
                    view.SetBackgroundColor(Color.Green);
                }
                else if (beacon.Distance > .5 && beacon.Distance <= 10)
                {
                    view.SetBackgroundColor(Color.Yellow);
                }
                else if (beacon.Distance > 10)
                {
                    view.SetBackgroundColor(Color.Red);
                }
                else
                {
                    view.SetBackgroundColor(Color.Transparent);
                }

                return view;
            });

            //adapter is a bridge between a ListView and the data that backs the list
            list.Adapter = adapter;

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

        protected override void OnResume()
        {
            base.OnResume();

            stopButton.Click += OnStopClick;
            startButton.Click += OnStartClick;

            if (beaconManager.IsBound(this))
            {
                beaconManager.SetBackgroundMode(false);
            }
        }

        async void OnStartClick(object sender, EventArgs e)
        {
            startButton.Enabled = false;
            stopButton.Enabled = true;

            await ClearData();

            beaconManager.StartMonitoringBeaconsInRegion(tagRegion);
            beaconManager.StartMonitoringBeaconsInRegion(emptyRegion);
        }

        void OnStopClick(object sender, EventArgs e)
        {
            startButton.Enabled = true;
            stopButton.Enabled = false;

            beaconManager.StopMonitoringBeaconsInRegion(tagRegion);
            beaconManager.StopMonitoringBeaconsInRegion(emptyRegion);
        }

        protected override void OnPause()
        {
            base.OnPause();

            stopButton.Click -= OnStopClick;
            startButton.Click -= OnStartClick;

            //if the beacon is still running
            if (beaconManager.IsBound(this))
            {
                beaconManager.SetBackgroundMode(true);
            }
        }

        protected override void OnDestroy()
        {
            base.OnDestroy();
            //if beacon manager is still running, stop it
            if (beaconManager.IsBound(this))
            {
                beaconManager.Unbind(this);
            }
        }

        async void RangingBeaconsInRegion(object sender, RangeEventArgs e)
        {
            var allBeacons = new List<Beacon>();

            //if there are more than 1 beacon detected
            if (e.Beacons.Count > 0)
            {
                foreach (var b in e.Beacons)
                {
                    allBeacons.Add(b);
                }

                var orderedBeacons = allBeacons.OrderBy(b => b.Distance).ToList();
                await UpdateData(orderedBeacons);
            }
        }

        void RemoveBeaconsNoLongerVisible(List<Beacon> allBeacons)
        {
            if (allBeacons == null || allBeacons.Count == 0) return;

            var delete = new List<Beacon>();
            foreach (var d in data)
            {
                if (allBeacons.All(ab => ab.Id1.ToString() != d.Id1.ToString()))
                {
                    delete.Add(d);
                }
            }

            data.RemoveAll(d => delete.Any(del => del.Id1.ToString() == d.Id1.ToString()));

            if (delete.Count > 0)
            {
                delete = null;
                UpdateList();
            }
        }

        //verify that bluetooth is on on the user's phone
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

        async Task UpdateData(List<Beacon> beacons)
        {
            await Task.Run(() =>
            {
                var newBeacons = new List<Beacon>();

                var bp = new BeaconParser();

                foreach (var beacon in beacons)
                {
                    if (data.Exists(b => b.Id1.ToString() == beacon.Id1.ToString()))
                    {
                        //update data
                        var index = data.FindIndex(b => b.Id1.ToString() == beacon.Id1.ToString());
                        data[index] = beacon;

                        //Console.WriteLine("Beacon data: " + beacon.Id1);
                    }

                    else
                    {
                        newBeacons.Add(beacon);
                    }
                }

                RunOnUiThread(() =>
                {
                    foreach (var beacon in newBeacons)
                    {
                        data.Add(beacon);
                    }

                    if (newBeacons.Count > 0)
                    {
                        data.Sort((x, y) => x.Distance.CompareTo(y.Distance));
                        UpdateList();
                    }
                });
            });
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

            startButton.Enabled = false;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            Finish();
        }

        //clear the data and update the list source
        Task ClearData()
        {
            return Task.Run(() =>
            {
                RunOnUiThread(() =>
                {
                    data.Clear();
                    ((ListSource)list.Adapter).UpdateList(data);
                });
            });
        }

        void UpdateList()
        {
            RunOnUiThread(() =>
            {
                ((ListSource)list.Adapter).UpdateList(data);
            });
        }
    }

    //source for the listview, displays how far the device is from the beacon
    public class ListSource : BaseAdapter<Beacon>
    {
        List<Beacon> data;
        Func<List<Beacon>, int, Android.Views.View, Android.Views.ViewGroup, Android.Views.View> _getView;

        public ListSource(Func<List<Beacon>, int, Android.Views.View, Android.Views.ViewGroup,
            Android.Views.View> getView)
        {
            _getView = getView;
            data = new List<Beacon>();
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override Android.Views.View GetView(int position, Android.Views.View convertView,
            Android.Views.ViewGroup parent)
        {
            return _getView(data, position, convertView, parent);
        }

        public override int Count
        {
            get
            {
                return data.Count;
            }
        }

        public override Beacon this[int index]
        {
            get
            {
                return data[index];
            }
        }

        public void UpdateList(List<Beacon> list)
        {
            data = list;
            NotifyDataSetChanged();
        }
    }
}

