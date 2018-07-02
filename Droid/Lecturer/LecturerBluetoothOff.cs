using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "BluetoothOff")]
    public class LecturerBluetoothOff : Activity
    {
        Button retryBluetooth;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BluetoothOff);

            retryBluetooth = FindViewById<Button>(Resource.Id.button1);

            retryBluetooth.Click += delegate
            {
                if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false)
                {
                    StartActivity(typeof(LectureBluetoothOn));
                }
            };
        }
    }
}