using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V4.Widget;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid
{
    public static class CommonClass
    {
        public static int moduleRowNumber;
        public static int count;

        public static TimeSpan maxTimeCheck;

        // If the user navigates back to web view upon switching on the bluetooth back (from Bluetooth Off page)
        // This url will allow the user to go back the url where he last stopped
        public static string url;

        public static bool threadCheckBeaconTransmit = true;
        public static bool threadCheckWebView = true;

        public static bool transmittedOnce = false;
    }
}