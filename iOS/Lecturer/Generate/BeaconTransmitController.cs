using System;
using UIKit;
using CoreGraphics;
using Foundation;
using CoreLocation;
using CoreBluetooth;
using CoreFoundation;
using BeaconTest.Models;
using System.Diagnostics;
using System.Threading;
using Acr.UserDialogs;

namespace BeaconTest.iOS
{
    public partial class BeaconTransmitController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;
		StudentTimetable studentTimetable;
		StudentModule studentModule;

        CLBeaconRegion beaconRegion;

        public BeaconTransmitController() {
            
        } /* new code from line 24 to line 26*/

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

            ViewAttendanceButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;
            var locationManager = new CLLocationManager();
            locationManager.RequestWhenInUseAuthorization();

			UserDialogs.Instance.ShowLoading("Retrieving module info...");
			ThreadPool.QueueUserWorkItem(o => GetModule());
        }

		public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

			var bluetoothManager = new CBCentralManager();
            if (bluetoothManager.State == CBCentralManagerState.PoweredOff)
            {
                // Does not go directly to bluetooth on every OS version though, but opens the Settings on most
                UIApplication.SharedApplication.OpenUrl(new NSUrl("App-Prefs:root=Bluetooth"));
            }         
		}

        private void InitBeacon()
		{
			string atsCode = SharedData.testATS;
            string atsCode1stHalf = atsCode.Substring(0, 3);
            string atsCode2ndHalf = atsCode.Substring(3, 3);

			beaconRegion = new CLBeaconRegion(new NSUuid(DataAccess.StudentGetBeaconKey()), (ushort)int.Parse(atsCode1stHalf), (ushort)int.Parse(atsCode2ndHalf), SharedData.beaconId);

			//power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
			var power = BeaconPower();

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager.StartAdvertising(peripheralData);
		}

		private NSNumber BeaconPower()
		{
			switch(studentModule.type){
				case "LAB":
					return new NSNumber(-84);
				case "TUT":
					return new NSNumber(-84);
				case "LEC":
					return new NSNumber(-81);
			}
			return null;
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
				}
            }
        }

        private void GetModule()
		{
			studentTimetable = DataAccess.GetStudentTimetable().Result;
            //studentModule = studentTimetable.GetCurrentModule();
			studentModule = studentTimetable.GetCurrentModule(CommonClass.moduleRowNumber);
            if (studentModule != null)
            {
                InvokeOnMainThread(() =>
                {
					ModuleNameLabel.Text = studentModule.abbr + " (" + studentTimetable.GetCurrentModule().code + ")";
					TimePeriodLabel.Text = studentModule.time;
					LocationLabel.Text = studentModule.location;
					AttendanceCodeLabel.Text = SharedData.testATS;
					UserDialogs.Instance.HideLoading();
					InitBeacon();
                });
            }
            else
            {
                InvokeOnMainThread(() =>
                {
                    ModuleNameLabel.Text = "No lessons today";
                    TimePeriodLabel.Hidden = true;
                    LocationLabel.Hidden = true;
					AttendanceCodeLabel.Hidden = true;
					UserDialogs.Instance.HideLoading();
                });
            }
		}

		public void ShowBluetoothAlert()
		{
			// Present Alert
            PresentViewController(CustomAlert.CreateUIAlertController("Bluetooth not available", "Please switch on bluetooth and try again", "Go to settings", "App-prefs:root=WIFI"), true, null);
		}
    }
}

