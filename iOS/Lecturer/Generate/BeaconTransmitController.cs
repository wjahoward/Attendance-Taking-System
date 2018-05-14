using System;
using UIKit;
using CoreGraphics;
using Foundation;
using CoreLocation;
using CoreBluetooth;
using CoreFoundation;
using TestAzureApi.Models;
using System.Diagnostics;

namespace BeaconTest.iOS
{
    public partial class BeaconTransmitController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;

		NSUuid beaconUUID;
        CLBeaconRegion beaconRegion;
        const ushort beaconMajor = 2755;
        const ushort beaconMinor = 5;
        const string beaconId = "123";
        const string uuid = "C9407F30-F5F8-466E-AFF9-25556B57FE6D";
		const string ATS = "110110";

		LecturerBeacon lecturerBeacon;

        public BeaconTransmitController(IntPtr handle) : base(handle)
        {
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager = new CBPeripheralManager(peripheralDelegate, DispatchQueue.DefaultGlobalQueue);
        }

        public override void DidReceiveMemoryWarning()
        {
            // Releases the view if it doesn't have a superview.
            base.DidReceiveMemoryWarning();

            // Release any cached data, images, etc that aren't in use.
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            ViewAttendanceButton.Layer.CornerRadius = BeaconTest.Resources.buttonCornerRadius;
            var locationManager = new CLLocationManager();
            locationManager.RequestWhenInUseAuthorization();
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            
            beaconUUID = new NSUuid();
            beaconRegion = new CLBeaconRegion(beaconUUID, beaconMajor, beaconMinor, beaconId);

            //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
            var power = new NSNumber(-59);

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager.StartAdvertising(peripheralData);

			lecturerBeacon = new LecturerBeacon();
			lecturerBeacon.BeaconKey = beaconUUID.ToString();
			lecturerBeacon.ATS_Lecturer = ATS;
			lecturerBeacon.Major = beaconMajor;
			lecturerBeacon.Minor = beaconMinor;
			lecturerBeacon.StaffID = "s12345";
			lecturerBeacon.TimeGenerated = TimeZone.CurrentTimeZone.ToLocalTime(DateTime.Now);
			Debug.WriteLine(lecturerBeacon.TimeGenerated);
			bool submitted;

			submitted = DataAccess.LecturerGenerateATS(lecturerBeacon).Result;
			Debug.WriteLine(submitted);
        }

        class BTPeripheralDelegate : CBPeripheralManagerDelegate
        {
            public override void StateUpdated(CBPeripheralManager peripheral)
            {
                if (peripheral.State == CBPeripheralManagerState.PoweredOn)
                {
                    Console.WriteLine("powered on");
                }
            }
        }
    }
}

