using Android.Bluetooth;
using System;

namespace BeaconTest.Droid
{
    //this class is used for passing variables from one activity to another

    public static class CommonClass
    {
        public static int count;

        public static TimeSpan maxTimeCheck;

        public static string url;

        public static bool threadCheckBeaconTransmit = true;
        public static bool threadCheckWebView = true;
        public static bool threadCheckEnterCode = true;

        public static AltBeaconOrg.BoundBeacon.BeaconTransmitter beaconTransmitter;

        public static BluetoothAdapter bluetoothAdapter;
    }
}