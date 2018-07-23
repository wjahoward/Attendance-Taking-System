using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth.LE;
using Android.Content;
using Android.Content.PM;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Droid.Lecturer;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "Lecturer", ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class Timetable : Activity, IDialogInterfaceOnDismissListener
    {
        public AdvertiseCallback advertiseCallback;
        ListView timeTableListView;
        LecturerTimetable lecturerTimetable;
        List<LecturerModuleTableViewItem> dataSource = new List<LecturerModuleTableViewItem>();

        AlertDialog.Builder builder;

        int indexOfLesson = 0;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Timetable);

            base.OnCreate(savedInstanceState);

            // Create your application here

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving timetable info...");

            ThreadPool.QueueUserWorkItem(o => GetTimetable());

            //ThreadPool.QueueUserWorkItem(o => VerifyBle());
        }

        public override void OnBackPressed()
        {
            var i = new Intent(this, typeof(MainActivity)).SetFlags(ActivityFlags.ReorderToFront);
            StartActivity(i);
            UserDialogs.Instance.HideLoading();
        }

        private void GetTimetable()
        {
            try
            {
                lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                if (lecturerTimetable != null)
                {
                    RunOnUiThread(() =>
                    {
                        UserDialogs.Instance.HideLoading();
                        SetTableData(lecturerTimetable);
                    });
                }
            }

            catch (Exception ex)
            {
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
            this.CheckNetworkAvailable();
        }

        private void CheckNetworkRechability()
        {
            Thread checkNetworkActiveThread = new Thread(new ThreadStart(CheckNetworkAvailable));
            checkNetworkActiveThread.Start();
        }

        private async void CheckNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => this.NetworkRechableOrNot());
            bool isDialogShowing = false;

            if (!isNetwork)
            {
                RunOnUiThread(() => {
                    try
                    {

                        if (!isDialogShowing)
                        {
                            isDialogShowing = true;
                            builder.Show();
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("NetworkReachability -> CheckNetworkRechability:" + ex.Message);
                    }
                });
            }
            else
            {
                GetTimetable();
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

        private void SetTableData(LecturerTimetable lecturerTimetable)
        {
            foreach (LecturerModule module in lecturerTimetable.modules)
            {
                if (!module.abbr.Equals(""))
                {
                    dataSource.Add(new LecturerModuleTableViewItem(module.abbr) { ModuleCode = module.code, Venue = module.location, Time = module.time, Id = indexOfLesson++, ATSCode = module.atscode });
                }
                else
                {
                    dataSource.Add(new LecturerModuleTableViewItem("No lesson") { ModuleCode = "", Venue = "", Time = "" });
                }
            }
            DisplayTimetableListView();
        }

        private void DisplayTimetableListView()
        {
            timeTableListView = FindViewById<ListView>(Resource.Id.timeTableListView);
            var adapter = new CustomAdapter(this, dataSource);
            timeTableListView.Adapter = adapter;

            if (dataSource[0].ModuleName.Equals("No lesson"))
            {
                timeTableListView.Divider = null;
                timeTableListView.DividerHeight = 0;

                timeTableListView.SetSelector(Android.Resource.Color.Transparent); // No highlight ripple effect if user clicks on listview
            }
            else
            {
                VerifyBle();
                timeTableListView.ItemClick += (object sender, AdapterView.ItemClickEventArgs e) =>
                {
                    CommonClass.moduleRowNumber = dataSource[e.Position].Id;

                    //string currentTimeString = DateTime.Now.ToShortTimeString();
                    string currentTimeString = "08:00"; // change to actual real time before testing!!
                    TimeSpan currentTime = TimeSpan.Parse(currentTimeString);
                    //Console.WriteLine("Current time: {0}", currentTime);

                    string moduleStartTimeString = dataSource[e.Position].Time.Substring(0, 5);
                    TimeSpan moduleStartTime = TimeSpan.Parse(moduleStartTimeString);
                    string moduleEndTimeString = dataSource[e.Position].Time.Substring(6, 5);
                    TimeSpan moduleEndTime = TimeSpan.Parse(moduleEndTimeString);
                    //Console.WriteLine("Module start time: {0}", moduleStartTime);

                    TimeSpan maxTime = moduleStartTime + TimeSpan.Parse("00:15:00");

                    if (currentTime > moduleStartTime && (currentTime >= moduleEndTime || currentTime > maxTime))
                    {
                        StartActivity(typeof(LecturerAttendanceWebView));
                    }

                    else if (currentTime >= moduleStartTime && currentTime <= maxTime)
                    {
                        if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false) // If Bluetooth is enabled
                        {
                            StartActivity(typeof(BeaconTransmitActivity));
                        }
                        else
                        {
                            StartActivity(typeof(LecturerBluetoothOff));
                        }
                    }
                    else
                    {
                        StartActivity(typeof(ErrorGenerating));
                    }
                };
            }
        }

        private bool VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetTitle("Bluetooth not enabled");
                builder.SetMessage("Please enable bluetooth on your phone and restart the app");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
                return false;
            }
            return true;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}