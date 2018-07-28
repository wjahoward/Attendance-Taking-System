using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Net;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Text;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using BeaconTest.Models;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "BeaconTransmitActivity", ScreenOrientation = ScreenOrientation.Portrait)]
    public class BeaconTransmitActivity : Activity, IDialogInterfaceOnDismissListener
    {
        //StudentModule studentModule;
        LecturerModule lecturerModule;

        TextView moduleNameTextView, timeTextView, locationTextView, attendanceCodeTextView, overrideAttendanceCodeTextView;
        ImageView studentAttendanceImageView, signalSmallestImageView, signalMediumImageView, signalLargeImageView;
        Button lecturerViewAttendanceButton, overrideATSButton;
        EditText attendanceCodeEditText;

        AlertDialog.Builder builder;

        InputMethodManager manager;

        System.Timers.Timer aTimer = new System.Timers.Timer();

        bool ableToTransmit;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BeaconTransmitActivity);

            moduleNameTextView = FindViewById<TextView>(Resource.Id.moduleNameTextView);
            timeTextView = FindViewById<TextView>(Resource.Id.timeTextView);
            locationTextView = FindViewById<TextView>(Resource.Id.locationTextView);
            attendanceCodeTextView = FindViewById<TextView>(Resource.Id.attendanceCodeTextView);
            studentAttendanceImageView = FindViewById<ImageView>(Resource.Id.studentAttendanceImageView);
            lecturerViewAttendanceButton = FindViewById<Button>(Resource.Id.viewAttendanceButton);

            overrideATSButton = FindViewById<Button>(Resource.Id.overrideATSButton);
            overrideAttendanceCodeTextView = FindViewById<TextView>(Resource.Id.overrideAttendanceCodeTextView);
            attendanceCodeEditText = FindViewById<EditText>(Resource.Id.attendanceCodeEditText);

            //signalSmallestImageView = FindViewById<ImageView>(Resource.Id.signalSmallest);
            //signalMediumImageView = FindViewById<ImageView>(Resource.Id.signalMedium);
            //signalLargeImageView = FindViewById<ImageView>(Resource.Id.signalLarge);

            overrideAttendanceCodeTextView.Click += overrideATSClick;

            lecturerViewAttendanceButton.Click += buttonClick;

            attendanceCodeEditText.TextChanged += AttendanceCodeEditTextChanged;

            overrideATSButton.Click += overrideATSButtonOnClick;

            manager = (InputMethodManager)GetSystemService(Context.InputMethodService);

            CommonClass.threadCheckBeaconTransmit = true;

            // uncomment the timer lines to make the session out works
            //aTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            //aTimer.Start();

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        //private void OnTimedEvent(object source, ElapsedEventArgs e)
        //{
        //    DateTime currentTime = DateTime.Now;
        //    currentTime += new TimeSpan(0, 0, 1);

        //    Console.WriteLine(currentTime);
        //    string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
        //    TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);    

        //    if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
        //    {
        //        ableToTransmit = false;
        //        BeaconTransmit(BeaconPower(), lecturerModule.atscode, ableToTransmit);

        //        StopThreadingTemporarily();

        //        aTimer.Stop();

        //        builder = new AlertDialog.Builder(this);
        //        builder.SetTitle("Lesson timeout");
        //        builder.SetMessage("You have reached 15 minutes of the lesson, please proceed back to Timetable page!");
        //        builder.SetPositiveButton(Android.Resource.String.Ok, TimeIsUp);
        //        builder.SetCancelable(false);
        //        builder.SetOnDismissListener(this);
        //        RunOnUiThread(() => builder.Show());
        //    }
        //}

        //private void TimeIsUp(object sender, DialogClickEventArgs e)
        //{
        //    StartActivity(typeof(Timetable));
        //}

        private void CheckBluetoothRechability()
        {
            Thread checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.threadCheckBeaconTransmit == true)
            {
                bool isBluetooth = await Task.Run(() => BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    RunOnUiThread(() =>
                    {
                        try
                        {
                            StartActivity(typeof(LecturerTransmitBluetoothOff));
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

        private void overrideATSClick(object sender, EventArgs e)
        {
            attendanceCodeEditText.Visibility = ViewStates.Visible;
            attendanceCodeEditText.RequestFocus();
            manager.ShowSoftInput(attendanceCodeEditText, ShowFlags.Implicit);
        }

        private void AttendanceCodeEditTextChanged(object sender, TextChangedEventArgs e)
        {
            if (attendanceCodeEditText.Text.Length == 6)
            {
                overrideATSButton.Visibility = ViewStates.Visible;
            }
            else
            {
                overrideATSButton.Visibility = ViewStates.Invisible;
            }
        }

        async void overrideATSButtonOnClick(object sender, EventArgs e)
        {
            var builderOverride = new AlertDialog.Builder(this);
            string message = "";
            try
            {
                lecturerModule.atscode = Convert.ToString(attendanceCodeEditText.Text);
                await DataAccess.LecturerOverrideATS(lecturerModule);
                attendanceCodeTextView.Text = attendanceCodeEditText.Text;
                attendanceCodeEditText.SetText("", TextView.BufferType.Normal);
                manager.HideSoftInputFromWindow(attendanceCodeEditText.WindowToken, 0);
                message = "You have successfully override the ATS Code!";
                builderOverride.SetPositiveButton(Android.Resource.String.Ok, RefreshBeacon);
            }

            catch (Exception ex)
            {
                message = "Please turn on Wifi to override ATS Code!";
                builderOverride.SetPositiveButton(Android.Resource.String.Ok, (EventHandler<DialogClickEventArgs>)null);
            }

            builderOverride.SetMessage(message);
            builderOverride.SetOnDismissListener(this);
            RunOnUiThread(() => builderOverride.Show());
        }

        // To be continued.. - not done
        private void RefreshBeacon(object sender, DialogClickEventArgs e)
        {
            CommonClass.transmittedOnce = false;
            Console.WriteLine(BeaconPower());
            BeaconTransmit(BeaconPower(), lecturerModule.atscode, false);
        }


        private void buttonClick(object sender, EventArgs e)
        {
            StopThreadingTemporarily();
            aTimer.Stop();
            StartActivity(typeof(LecturerAttendanceWebView));
        }

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckBeaconTransmit = false;
        }

        private void GetModule()
        {
            try
            {
                LecturerTimetable lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                lecturerModule = lecturerTimetable.GetCurrentModule(CommonClass.moduleRowNumber);
                if (lecturerModule != null)
                {
                    RunOnUiThread(() => moduleNameTextView.Text = lecturerModule.abbr + " (" + lecturerModule.code + ")");
                    RunOnUiThread(() => timeTextView.Text = lecturerModule.time);
                    RunOnUiThread(() => locationTextView.Text = lecturerModule.location);
                    RunOnUiThread(() => attendanceCodeTextView.Text = lecturerModule.atscode);
                    RunOnUiThread(() => UserDialogs.Instance.HideLoading());

                    //BeaconTransmitter bTransmitter = new BeaconTransmitter();
                    //bTransmitter.Transmit(BeaconPower(), lecturerModule.atscode);

                    if (CommonClass.transmittedOnce == false)
                    {
                        ableToTransmit = true;
                        BeaconTransmit(BeaconPower(), lecturerModule.atscode, ableToTransmit);
                    }

                    CheckBluetoothRechability();
                }
                else
                {
                    RunOnUiThread(() => moduleNameTextView.Text = "No lessons today");
                    RunOnUiThread(() => timeTextView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => locationTextView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => attendanceCodeTextView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => studentAttendanceImageView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => UserDialogs.Instance.HideLoading());
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

        private void BeaconTransmit(int power, string atscode, bool ableToTransmit)
        {
            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit(power, atscode, ableToTransmit);

            if (ableToTransmit == true)
            {
                CommonClass.transmittedOnce = true;
            }
            else
            {
                CommonClass.transmittedOnce = false;
            }
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
            var wifiManager = Application.Context.GetSystemService(Context.WifiService) as WifiManager;

            if (wifiManager != null)
            {
                //return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && (wifiManager.ConnectionInfo.SSID == "\"SPStudent\"" || wifiManager.ConnectionInfo.SSID == "\"SPStaff\"")); - check if connect to SP Network   
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID != "<unknown ssid>");
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

        //private bool VerifyBle()
        //{
        //    if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
        //    {
        //        var builder = new AlertDialog.Builder(this);
        //        builder.SetTitle("Bluetooth not enabled");
        //        builder.SetMessage("Please enable bluetooth on your phone and restart the app");
        //        EventHandler<DialogClickEventArgs> handler = null;
        //        builder.SetPositiveButton(Android.Resource.String.Ok, handler);

        //        builder.SetOnDismissListener(this);
        //        RunOnUiThread(() => builder.Show());
        //        //return false;
        //    }
        //    return true;
        //}

        //private void handler(object sender, DialogClickEventArgs e)
        //{
        //    var myButton = sender as Button;
        //    if (myButton != null)
        //    {
        //        if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
        //        {
        //            VerifyBle();
        //        }
        //    }
        //}

        public override void OnBackPressed()
        {
            return;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}