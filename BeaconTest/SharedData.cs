using System;

namespace BeaconTest
{
    public static class SharedData
    {
        public static string primaryColourHex = "#2BDDC3";
        public static int[] primaryColourRGB = new int[] { 43, 221, 195 };
        public static string secondaryColourHex = "#F44D71";
        public static int[] secondaryColourRGB = new int[] { 244, 77, 113 };
        public static int buttonCornerRadius = 10;

        public static string testBeaconUUID = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5";
		//public static string testBeaconUUIDWithModuleCodeLocation = "2F234454-CF6D-4A0F-ADF2-ST2137T22433";

        public static int testBeaconMajor= 1;
        public static int testBeaconMinor = 2;
        public static string beaconId = "123";
        public static string testATS = "110110";
		public static string testStaffID = "s12345";

		public static string testStudentID = "p1234567";

		public static string testSPStudentID = "1626331";
		public static string testSPDate = "160518";

		public static int maxRetry = 3;
		public static int currentRetry = 0;

        public static int moduleRowNumber;

        // for listview purpose
        public static string admissionId;
    }
}
