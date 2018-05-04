using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth.LE;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Android_iBeacon
{
    [Activity(Label = "Lecturer")]
    public class Lecturer : Activity
    {
        private BeaconManager beaconManager;
        public AdvertiseCallback advertiseCallback;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Lecturer);

            base.OnCreate(savedInstanceState);

            // Create your application here

            beaconManager = BeaconManager.GetInstanceForApplication(this);

            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit();
        }
    }
}