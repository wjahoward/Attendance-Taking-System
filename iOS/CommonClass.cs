using System;
namespace BeaconTest.iOS
{
    public static class CommonClass
    {
		public static int moduleRowNumber;
        public static bool checkBluetooth;

        public static string atscode;
        public static string moduleType;

        public static bool beaconTransmitBluetoothThreadCheck = true;


        public static bool lecturerAttendanceBluetoothThreadCheck = true;
        public static bool lecturerAttendancenNetworkThreadCheck = true;

        public static TimeSpan maxTimeCheck;

        public static bool checkBluetoothRangingOnce = false;

    }
}
