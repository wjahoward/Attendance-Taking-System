using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Models;

namespace BeaconTest.Droid.Resources.layout
{
    [Activity(Label = "BeaconTransmitActivity")]
    public class BeaconTransmitActivity : Activity
    {
        StudentTimetable studentTimetable;
        StudentModule studentModule;

        TextView moduleNameTextView, timeTextView, locationTextView, attendanceCodeTextView;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BeaconTransmitActivity);

            studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
            studentModule = studentTimetable.GetCurrentModule();

            moduleNameTextView = FindViewById<TextView>(Resource.Id.moduleNameTextView);
            timeTextView = FindViewById<TextView>(Resource.Id.timeTextView);
            locationTextView = FindViewById<TextView>(Resource.Id.locationTextView);
            attendanceCodeTextView = FindViewById<TextView>(Resource.Id.attendanceCodeTextView);

            moduleNameTextView.Text = studentModule.abbr + " (" + studentModule.code + ")";
            timeTextView.Text = studentModule.time;
            locationTextView.Text = studentModule.location;
            attendanceCodeTextView.Text = SharedData.testATS;

            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit();
        }
    }
}