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
    [Activity(Label = "BeaconTransmitActivity", ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class BeaconTransmitActivity : Activity, IDialogInterfaceOnDismissListener
    {
        //StudentModule studentModule;
        LecturerModule lecturerModule;

        TextView moduleNameTextView, timeTextView, locationTextView, attendanceCodeTextView, overrideAttendanceCodeTextView;
        ImageView studentAttendanceImageView;
        Button lecturerViewAttendanceButton, overrideATSButton;
        EditText attendanceCodeEditText;

        BeaconManager beaconManager;

        AlertDialog.Builder builder;

        InputMethodManager manager;

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

            overrideAttendanceCodeTextView.Click += overrideATSClick;

            lecturerViewAttendanceButton.Click += buttonClick;

            attendanceCodeEditText.TextChanged += AttendanceCodeEditTextChanged;

            overrideATSButton.Click += overrideATSButtonOnClick;

            manager = (InputMethodManager)GetSystemService(Context.InputMethodService);

            BluetoothConstantCheck bluetoothCheck = new BluetoothConstantCheck(this);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
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
            }

            catch (Exception ex)
            {
                message = "Please turn on Wifi to override ATS Code!";
            }

            builderOverride.SetMessage(message);
            EventHandler<DialogClickEventArgs> handler = null;
            builderOverride.SetPositiveButton(Android.Resource.String.Ok, handler);
            builderOverride.SetOnDismissListener(this);
            RunOnUiThread(() => builderOverride.Show());
        }

        public override void OnBackPressed()
        {
            var i = new Intent(this, typeof(Timetable)).SetFlags(ActivityFlags.ReorderToFront);
            StartActivity(i);
            UserDialogs.Instance.HideLoading();
        }

        private void buttonClick(object sender, EventArgs e)
        {
            StartActivity(typeof(LecturerAttendanceWebView));
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

                    CommonClass.power = BeaconPower();
                    CommonClass.atscode = lecturerModule.atscode;

                    beaconManager = BeaconManager.GetInstanceForApplication(this);
                    BeaconTransmitter bTransmitter = new BeaconTransmitter();
                    bTransmitter.Transmit(BeaconPower(), lecturerModule.atscode);
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
                builder.SetTitle("Wifi not enabled");
                builder.SetMessage("Please turn on Wifi!");
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
                this.RunOnUiThread(() =>
                {
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
                GetModule();
            }
        }

        // maybe can edit such a way it connects to SP Wifi
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

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}