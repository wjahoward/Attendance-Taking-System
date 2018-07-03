using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Models;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "BeaconTransmitActivity")]
    public class BeaconTransmitActivity : Activity
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
            studentModule = studentTimetable.GetCurrentModule();
            if(studentModule != null)
            {
                RunOnUiThread(() => moduleNameTextView.Text = studentModule.abbr + " (" + studentModule.code + ")");
                RunOnUiThread(() => timeTextView.Text = studentModule.time);
                RunOnUiThread(() => locationTextView.Text = studentModule.location);
                RunOnUiThread(() => attendanceCodeTextView.Text = SharedData.testATS);
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
    }
}