using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
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
        ImageView studentAttendanceImageView;
        Button lecturerViewAttendanceButton;
        EditText attendanceCodeEditText;

        BeaconManager beaconManager;

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

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        private async void overrideATSClick(object sender, EventArgs e)
        {
            if (attendanceCodeEditText.Text == "")
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetMessage("Please do not leave the ATS Code blank!");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);

                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
            }
            else if (attendanceCodeEditText.Text.Length != 6)
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetMessage("ATS Code invalid!");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);

                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
            }
            else
            {
                lecturerModule.atscode = Convert.ToString(attendanceCodeEditText.Text);
                await DataAccess.LecturerOverrideATS(lecturerModule);
                var builder = new AlertDialog.Builder(this);
                builder.SetMessage("You have successfully override the ATS Code!");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);

                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
            }
        }

        private void buttonClick(object sender, EventArgs e)
        {
            StartActivity(typeof(LecturerAttendanceWebView));
        }

        private void GetModule()
        {
            LecturerTimetable lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
            lecturerModule = lecturerTimetable.GetCurrentModule(CommonClass.moduleRowNumber);
            if(lecturerModule != null)
            {
                RunOnUiThread(() => moduleNameTextView.Text = lecturerModule.abbr + " (" + lecturerModule.code + ")");
                RunOnUiThread(() => timeTextView.Text = lecturerModule.time);
                RunOnUiThread(() => locationTextView.Text = lecturerModule.location);
                RunOnUiThread(() => attendanceCodeTextView.Text = lecturerModule.atscode);
                RunOnUiThread(() => UserDialogs.Instance.HideLoading());

                CommonClass.power = BeaconPower();

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
                //return false;
            }
            return true;
        }

        private void handler(object sender, DialogClickEventArgs e)
        {
            var myButton = sender as Button;
            if (myButton != null)
            {
                if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
                {
                    VerifyBle();
                }
            }
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}