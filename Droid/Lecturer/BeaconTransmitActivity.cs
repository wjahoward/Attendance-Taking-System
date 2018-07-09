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
        StudentModule studentModule;

        TextView moduleNameTextView, timeTextView, locationTextView, attendanceCodeTextView;
        ImageView studentAttendanceImageView;

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

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        private void GetModule()
        {
            StudentTimetable studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
            studentModule = studentTimetable.GetCurrentModule(CommonClass.moduleRowNumber);
            if(studentModule != null)
            {
                RunOnUiThread(() => moduleNameTextView.Text = studentModule.abbr + " (" + studentModule.code + ")");
                RunOnUiThread(() => timeTextView.Text = studentModule.time);
                RunOnUiThread(() => locationTextView.Text = studentModule.location);
                RunOnUiThread(() => attendanceCodeTextView.Text = SharedData.testATS);
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
            switch (studentModule.type)
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