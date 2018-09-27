using System;
using System.Collections.Generic;

namespace BeaconTest.iOS
{
    // this CommonClass is basically a class that 'brings' the value of that variable to other classes where applicable
    // the idea of having this class is similar to SharedData.cs class, just that this CommonClass.cs is meant for 
    // its own native, iOS for this case

    public static class CommonClass
    {
		public static int moduleRowNumber;
        public static bool checkBluetooth;

        public static string atscode;
        public static string moduleType;

        public static bool beaconTransmitBluetoothThreadCheck = true;
        public static bool lecturerAttendanceBluetoothThreadCheck = true;

        public static bool lecturerAttendanceNetworkThreadCheck = true;

        public static bool checkBluetoothRangingOnce = false;

        public static TimeSpan maxTimeCheck;
    }
}