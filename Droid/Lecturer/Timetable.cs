using System;
using System.Collections.Generic;
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
using Android.Widget;
using BeaconTest.Droid.Lecturer;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "Timetable", ScreenOrientation = ScreenOrientation.Portrait)]
    public class Timetable : Activity, IDialogInterfaceOnDismissListener
    {
        public AdvertiseCallback advertiseCallback;
        private const string unknownssid = "<unknown ssid>";

        ListView timeTableListView;
        LecturerTimetable lecturerTimetable;
        List<LecturerModuleTableViewItem> dataSource = new List<LecturerModuleTableViewItem>(); // to be added into the timeTableListView

        AlertDialog.Builder builder;

        int indexOfLesson = 0; // indicates the index of the lesson from the timeTableListView i.e. index 0 stands for lesson 1, index 1 stands for lesson 2, index 2 stands for lesson 3 and so on..

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Timetable);

            base.OnCreate(savedInstanceState);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving timetable info...");

            ThreadPool.QueueUserWorkItem(o => GetTimetable());
        }

        private void GetTimetable()
        {
            /* try-catch to see if while getting the lecturer's timetable data, WiFi is not enabled
            if WiFi is not enabled suddenly while getting the lecturer's timetable data
            it will catch that issue and an Alert Dialog will be shown. */

            try
            {
                lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                if (lecturerTimetable != null)
                {
                    RunOnUiThread(() =>
                    {
                        UserDialogs.Instance.HideLoading();
                        SetTableData(lecturerTimetable); // setting lecturer's timetable data on timeTableListView
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
            CheckNetworkAvailable();
        }

        private async void CheckNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => this.NetworkRechableOrNot()); // check to see if phone is connected to SP WiFi

            if (!isNetwork) // if phone is not connected to SP WiFi, will continue to show the AlertDialog until phone is connected to SPWifi
            {
                RunOnUiThread(() => {
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

                /* regardless if is or not connected to SPWifi, 
                 when the user presses on Retry button,
                 it will check again if whether is connected to SPWifi.
                 If no, it will go back to AlertRetryClick, and then to CheckNetworkAvailable method */

                GetTimetable(); 
            }
        }

        private bool NetworkRechableOrNot()
        {
            var wifiManager = Application.Context.GetSystemService(Context.WifiService) as WifiManager;

            if (wifiManager != null)
            {
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID == "\"SPStaff\"");
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
                    dataSource.Add(new LecturerModuleTableViewItem("No lesson today") { ModuleCode = "", Venue = "", Time = "" });
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

                // remove highlight ripple effect if user clicks on listview

                timeTableListView.SetSelector(Android.Resource.Color.Transparent); 
            }
            else
            {
                VerifyBle(); // check to see if Bluetooth is enabled

                timeTableListView.ItemClick += (object sender, AdapterView.ItemClickEventArgs e) =>
                {
                    SharedData.moduleRowNumber = dataSource[e.Position].Id; // the index of that lesson

                    DateTime currentDateTime = DateTime.Now;
                    string currentTimeString = currentDateTime.ToString("HH:mm:ss");
                    TimeSpan currentTime = TimeSpan.Parse(currentTimeString);

                    string moduleStartTimeString = dataSource[e.Position].Time.Substring(0, 5);
                    TimeSpan moduleStartTime = TimeSpan.Parse(moduleStartTimeString);

                    string moduleEndTimeString = dataSource[e.Position].Time.Substring(6, 5);
                    TimeSpan moduleEndTime = TimeSpan.Parse(moduleEndTimeString);

                    // duration of showing atscode is at a maximum of 15 minutes
                    // i.e. if lesson starts at 8am, once time reaches 8.15am onwards can only view the attendance for that lesson

                    TimeSpan maxTime = moduleStartTime + TimeSpan.Parse("00:15:00");

                    // bring the maxTime to Time method

                    CommonClass.maxTimeCheck = maxTime;

                    /* if the lesson is already over and the lecturer wants to check the attendance for the previous lesson
                     it will navigate him to the webview, which he can log in with his or her credentials
                     to be able to view the attedance for that lesson */

                    if (currentTime > moduleStartTime && (currentTime >= moduleEndTime || currentTime >= maxTime))

                    // if current time exceeds the time of that particular lesson

                    {
                        StartActivity(typeof(LecturerAttendanceWebViewAfterGeneratingATS));
                    }

                    else if (currentTime >= moduleStartTime && currentTime <= maxTime) // if current time does not exceed the time of that particular lesson
                    {
                        if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false) // if Bluetooth is enabled
                        {
                            StartActivity(typeof(BeaconTransmitActivity));
                        }
                        else // if Bluetooth is not enabled
                        {
                            StartActivity(typeof(LecturerBluetoothOff));
                        }
                    }

                    /* if current time is not within the time for the lecturer to generate attendance code for that lesson
                    i.e. a lecturer has two lessons, first lesson starts at 8am to 10am, and second lesson starts at 10am to 12pm
                    assuming the time is 8am, if the lecturer accidentally clicks on the second lesson(starting at 10am to 12pm)
                    it will navigate the lecturer to the ErrorGenerating page, which means the lecturer is unable to generates attendance
                    code for that lesson until the time reaches 10am */

                    else
                    {
                        StartActivity(typeof(ErrorGenerating));
                    }
                };
            }
        }

        private bool VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability()) // if Bluetooth is not enabled
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetTitle("Bluetooth not enabled");
                builder.SetMessage("Please enable bluetooth on your phone to generate attendance code!");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
                return false;
            }
            return true;
        }

        public override void OnBackPressed()
        {
            return; // prevent the users from going back to Login Page upon pressing the hardware back button
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}