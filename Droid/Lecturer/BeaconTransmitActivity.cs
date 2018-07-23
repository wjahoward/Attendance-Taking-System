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
using Android.OS;
using Android.Runtime;
using Android.Views;
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
        Button lecturerViewAttendanceButton;
        EditText attendanceCodeEditText;

        BeaconManager beaconManager;

        AlertDialog.Builder builder;

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

            overrideAttendanceCodeTextView = FindViewById<TextView>(Resource.Id.overrideAttendanceCodeTextView);
            attendanceCodeEditText = FindViewById<EditText>(Resource.Id.attendanceCodeEditText);

            overrideAttendanceCodeTextView.Click += overrideATSClick;

            lecturerViewAttendanceButton.Click += buttonClick;

            BluetoothConstantCheck bluetoothCheck = new BluetoothConstantCheck(this);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        private async void overrideATSClick(object sender, EventArgs e)
        {
            var builder = new AlertDialog.Builder(this);
            string message = "";

            if (attendanceCodeEditText.Text == "")
            {
                message = "Please do not leave the ATS Code blank!";
            }
            else if (attendanceCodeEditText.Text.Length != 6)
            {
                message = "ATS Code entered is invalid!";
            }
            else
            {
                try
                {
                    lecturerModule.atscode = Convert.ToString(attendanceCodeEditText.Text);
                    await DataAccess.LecturerOverrideATS(lecturerModule);
                    attendanceCodeTextView.Text = attendanceCodeEditText.Text;
                    attendanceCodeEditText.SetText("", TextView.BufferType.Normal);
                    message = "You have successfully override the ATS Code!";
                }

                catch (Exception ex)
                {
                    message = "Please turn on Wifi to override ATS Code!";
                }
            }

            builder.SetMessage(message);
            EventHandler<DialogClickEventArgs> handler = null;
            builder.SetPositiveButton(Android.Resource.String.Ok, handler);
            builder.SetOnDismissListener(this);
            RunOnUiThread(() => builder.Show());
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

                    beaconManager = BeaconManager.GetInstanceForApplication(this);
                    BeaconTransmitter bTransmitter = new BeaconTransmitter();
                    bTransmitter.Transmit();
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
            ConnectivityManager connectivityManager = (ConnectivityManager)this.GetSystemService(Context.ConnectivityService);
            var activeConnection = connectivityManager.ActiveNetworkInfo;
            if ((activeConnection != null) && activeConnection.IsConnected)
            {
                // we are connected to a network.
                if (activeConnection.Type.ToString().ToUpper().Equals("WIFI"))
                {
                    return true;
                }
                else
                    return true;
            }
            else
            {
                return false;
            }
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