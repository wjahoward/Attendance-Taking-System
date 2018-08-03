using System;

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
        public static bool threadCheckEnterCode = true;

        public static bool transmittedOnce = false;
    }
}