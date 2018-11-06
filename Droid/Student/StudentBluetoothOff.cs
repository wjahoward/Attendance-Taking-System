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

namespace BeaconTest.Droid.Student
{
    //this class handles activities where the student did not enable bluetooth on their phone
    [Activity(Label = "BTReady", LaunchMode = LaunchMode.SingleTask, ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class StudentBluetoothOff : Activity
    {
        Button retryBluetooth;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BluetoothOff);

            retryBluetooth = FindViewById<Button>(Resource.Id.retryBluetoothButton);

            //retryBluetooth.Click += delegate
            //{
            //    if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false)
            //    {
            //        StartActivity(typeof(EnterCode));
            //    }
            //};
            retryBluetooth.Click += RetryBluetoothOnClick;
        }

        private void RetryBluetoothOnClick(object sender, EventArgs e)
        {
            /*if bluetooth is enabled, student is taken to the EnterCode activity, else they will remain on this
             activity*/
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false)
            {
                RunOnUiThread(() => StartActivity(typeof(EnterCode)));
                Finish();
            }
        }

        //prevents user from going back to the previous page
        public override void OnBackPressed()
        {
            return;
        }
    };
}
