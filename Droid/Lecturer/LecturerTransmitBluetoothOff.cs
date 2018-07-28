using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "LecturerTransmitBluetoothOff", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerTransmitBluetoothOff : Activity
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
                    CommonClass.transmittedOnce = false;
                    StartActivity(typeof(BeaconTransmitActivity));
                }
            };
        }

        public override void OnBackPressed()
        {
            return;
        }
    }
}