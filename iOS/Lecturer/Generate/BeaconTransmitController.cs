using System;
using UIKit;
using CoreGraphics;
using Foundation;
using CoreLocation;
using CoreBluetooth;
using CoreFoundation;
using BeaconTest.Models;
using System.Diagnostics;

namespace BeaconTest.iOS
{
    public partial class BeaconTransmitController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;

        CLBeaconRegion beaconRegion;

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
            
			beaconRegion = new CLBeaconRegion(new NSUuid(DataAccess.StudentGetBeaconKey()), (ushort) DataAccess.GetATS(), (ushort) Resources.testBeaconMinor, Resources.beaconId);

            //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
            var power = new NSNumber(-59);

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();               
            peripheralManager.StartAdvertising(peripheralData);
			if (peripheralDelegate.bluetoothAvailable == false)
            {
                ShowBluetoothAlert();
            }

			lecturerBeacon = new LecturerBeacon();
			lecturerBeacon.BeaconKey = Resources.testBeaconUUID;
			lecturerBeacon.ATS_Lecturer = Resources.testATS;
			lecturerBeacon.Major = Resources.testBeaconMajor;
			lecturerBeacon.Minor = Resources.testBeaconMinor;
			lecturerBeacon.StaffID = Resources.testStaffID;
			lecturerBeacon.TimeGenerated = TimeZone.CurrentTimeZone.ToLocalTime(DateTime.Now);
			Debug.WriteLine(lecturerBeacon.TimeGenerated);
			bool submitted;

			submitted = DataAccess.LecturerGenerateATS(lecturerBeacon).Result;
			Debug.WriteLine(submitted);
        }

        public class BTPeripheralDelegate : CBPeripheralManagerDelegate
        {
			public bool bluetoothAvailable = true;

            public override void StateUpdated(CBPeripheralManager peripheral)
            {
                if (peripheral.State == CBPeripheralManagerState.PoweredOn)
                {
                    Console.WriteLine("Powered on");
                }
				else
				{
					Debug.WriteLine("Bluetooth not available");
					bluetoothAvailable = false;
				}
            }
        }

		public void ShowBluetoothAlert()
		{
			// Present Alert
            PresentViewController(CustomAlert.CreateUIAlertController("Bluetooth not available", "Please switch on bluetooth and try again", "Go to settings", "App-prefs:root=WIFI"), true, null);
		}
    }
}

