﻿using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "LecturerBluetoothOffListView", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerBluetoothOffListView : Activity
    {
        Button retryBluetooth;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BluetoothOff);

            retryBluetooth = FindViewById<Button>(Resource.Id.retryBluetoothButton);

            retryBluetooth.Click += delegate
            {
                if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false)
                {
                    StartActivity(typeof(LecturerAttendanceListView));
                }
            };
        }

        public override void OnBackPressed()
        {
            return;
        }
    }
}