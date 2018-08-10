using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth.LE;
using Android.Content;
using Android.Content.PM;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Support.V4.Widget;
using Android.Views;
using Android.Widget;
using BeaconTest.Droid.Lecturer;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "LecturerAttendanceListView", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerAttendanceListView : Activity, IDialogInterfaceOnDismissListener
    {
        ListView timeTableListView;

        LecturerModule lecturerModule;

        ObservableCollection<StudentSubmission> studentSubmissonList = new ObservableCollection<StudentSubmission>();

        List<StudentAttendanceSubmissionTableViewItem> dataSource = new List<StudentAttendanceSubmissionTableViewItem>();

        AlertDialog.Builder builder;
        Thread checkBluetoothActiveThread;

        SwipeRefreshLayout swiperefresh;

        TextView noStudent;

        System.Timers.Timer lecturerAttendanceTimer = new System.Timers.Timer();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.LecturerAttendanceListView);

            base.OnCreate(savedInstanceState);

            CommonClass.threadCheckLecturerAttendanceListView = true;

            swiperefresh = FindViewById<SwipeRefreshLayout>(Resource.Id.swiperefresh);

            noStudent = FindViewById<TextView>(Resource.Id.noStudent);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving student attendance...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        // in case the user switches off Bluetooth and re-transmit the BLE signals
        private void GetModule()
        {
            try
            {
                LecturerTimetable lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                lecturerModule = lecturerTimetable.GetCurrentModule(SharedData.moduleRowNumber);
                if (lecturerModule != null)
                {
                    lecturerAttendanceTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
                    lecturerAttendanceTimer.Start();

                    BeaconTransmit(BeaconPower(), lecturerModule.atscode);

                    CheckBluetoothRechability();

                    GetTimetable();
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

        private void BeaconTransmit(int power, string atscode)
        {
            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit(power, atscode);
        }

        private void AlertRetryClick(object sender, DialogClickEventArgs e)
        {
            CheckNetworkAvailable();
        }

        private async void CheckNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => NetworkRechableOrNot());

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
            var wifiManager = Application.Context.GetSystemService(WifiService) as WifiManager;

            if (wifiManager != null)
            {
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && (wifiManager.ConnectionInfo.SSID == "\"SPStudent\""));
            }
            return false;
        }

        private int BeaconPower()
        {
            switch (lecturerModule.type)
            {
                case "LAB":
                    return -84;
                case "TUT":
                    return -84;
                case "LEC":
                    return -81;
            }
            return 0;
        }

        private void CheckBluetoothRechability()
        {
            checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.threadCheckLecturerAttendanceListView == true)
            {
                bool isBluetooth = await Task.Run(() => BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    RunOnUiThread(() =>
                    {
                        try
                        {
                            StartActivity(typeof(LecturerBluetoothOffListView));
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("BluetoothReachability -> CheckBluetoothRechability:" + ex.Message);
                        }
                    });
                }
                else
                {
                    CheckBluetoothAvailable();
                }
            }
            else
            {

            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                return false;
            }
            return true;
        }

        public override void OnBackPressed()
        {
            StopThreadingTemporarily();
            lecturerAttendanceTimer.Stop();

            CommonClass.beaconTransmitter.StopAdvertising();

            StartActivity(typeof(BeaconTransmitActivity));
        }

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckLecturerAttendanceListView = false;
        }

        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            currentTime += new TimeSpan(0, 0, 1);

            string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
            TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);

            if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
            {
                StopThreadingTemporarily();

                CommonClass.bluetoothAdapter.Disable();

                lecturerAttendanceTimer.Stop();

                builder = new AlertDialog.Builder(this);
                builder.SetTitle("Lesson timeout");
                builder.SetMessage("You have reached 15 minutes of the lesson, please proceed back to Timetable page!");
                builder.SetPositiveButton(Android.Resource.String.Ok, TimeIsUp);
                builder.SetCancelable(false);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
            }
        }

        private void TimeIsUp(object sender, DialogClickEventArgs e)
        {
            StopThreadingTemporarily();
            StartActivity(typeof(Timetable));
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }

        private void GetTimetable()
        {
            try
            {
                studentSubmissonList = DataAccess.GetStudentAttendance().Result;
                if (studentSubmissonList != null)
                {
                    RunOnUiThread(() =>
                    {
                        UserDialogs.Instance.HideLoading();
                        SetTableData(studentSubmissonList);
                        //stop refresh after data is loaded
                        swiperefresh.Refreshing = false;
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

        private void SetTableData(ObservableCollection<StudentSubmission> studentAttendance)
        {
            if (studentAttendance.Count == 0)
            {
                dataSource.Add(new StudentAttendanceSubmissionTableViewItem() { AdmissionId = "No student has submit" });
            }
            else
            {
                foreach (StudentSubmission attendance in studentAttendance)
                {
                    if (!attendance.AdmissionId.Equals(""))
                    {
                        dataSource.Add(new StudentAttendanceSubmissionTableViewItem(attendance.AdmissionId) { DateSubmitted = attendance.DateSubmitted });
                    }
                }
            }
            DisplayTimetableListView();
        }

        private void DisplayTimetableListView()
        {
            timeTableListView = FindViewById<ListView>(Resource.Id.studentAttendanceListView);

            if (dataSource[0].AdmissionId.Equals("No student has submit"))
            {
                noStudent.Visibility = ViewStates.Visible;
                CommonClass.noStudent = true;

                timeTableListView.Divider = null;
                timeTableListView.DividerHeight = 0;

                timeTableListView.SetSelector(Android.Resource.Color.Transparent); // No highlight ripple effect if user clicks on listview
            }
            else
            {
                CommonClass.noStudent = false;

                noStudent.Visibility = ViewStates.Gone;

                var adapter = new CustomAdapterLecturerListView(this, dataSource);
                timeTableListView.Adapter = adapter;
            }

            swiperefresh.Refresh += delegate
            {
                if (dataSource.Count > 0)
                {
                    studentSubmissonList.Clear();
                    dataSource.Clear();
                    ThreadPool.QueueUserWorkItem(o => GetTimetable());
                }
            };
        }
    }
}