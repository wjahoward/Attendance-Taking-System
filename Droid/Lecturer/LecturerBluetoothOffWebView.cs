﻿using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "LecturerBluetoothOffWebView", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerBluetoothOffWebView : Activity
    {
        Button retryBluetooth;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BluetoothOff);

            retryBluetooth = FindViewById<Button>(Resource.Id.retryBluetoothButton);

            retryBluetooth.Click += delegate
            {
                if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false) // if Bluetooth is enabled
                {
                    StartActivity(typeof(LecturerAttendanceWebView));
                }
            };
        }

        public override void OnBackPressed() // prevent user to navigate to previous page
        {
            return;
        }
    }
}