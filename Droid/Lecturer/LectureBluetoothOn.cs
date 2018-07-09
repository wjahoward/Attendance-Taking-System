using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "BTReady", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LectureBluetoothOn : Activity
    {
        Button beginButton;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BTReady);

            beginButton = FindViewById<Button>(Resource.Id.button1);

            beginButton.Click += delegate
            {
                StartActivity(typeof(BeaconTransmitActivity));
            };
        }
    }
}