﻿using System;
using CoreLocation;
using CoreBluetooth;
using CoreFoundation;
using Foundation;
using UIKit;
using System.Linq;
using System.Threading.Tasks;
using System.Diagnostics;

namespace BeaconTest.iOS
{
    public partial class BeaconRangingController : UIViewController
    {

        CLLocationManager locationManager;
        //static readonly string uuid = "E4C8A4FC-F68B-470D-959F-29382AF72CE7";
        //static readonly string regionId = "Monkey";
        CLBeaconRegion beaconRegion;
        NSUuid beaconUUID;
        const ushort beaconMajor = 2755;
        const ushort beaconMinor = 5;
        const string beaconId = "123";
        const string uuid = "C9407F30-F5F8-466E-AFF9-25556B57FE6D";

        public BeaconRangingController() : base("BeaconRangingController", null)
        {
            
        }]

        public async Task DetectBeaconOn(int scanDuration)
        {
            locationManager.StartRangingBeacons(beaconRegion);
            locationManager.DidRangeBeacons += LocationManager_DidRangeBeacons;
            await Task.Delay(scanDuration);
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.

            locationManager = new CLLocationManager();
            locationManager.AuthorizationChanged += LocationManager_AuthorizationChanged;
            locationManager.RegionEntered += LocationManager_RegionEntered;
            locationManager.RegionLeft += LocationManager_RegionLeft;
            locationManager.DidRangeBeacons += LocationManager_DidRangeBeacons;
            locationManager.RequestAlwaysAuthorization();

        }

		private void LocationManager_RegionLeft(object sender, CLRegionEventArgs e)
        {
            var notification = new UILocalNotification();
            notification.AlertBody = "Goodbye iBeacon";
            UIApplication.SharedApplication.PresentLocalNotificationNow(notification);
        }

        private void LocationManager_RegionEntered(object sender, CLRegionEventArgs e)
        {
            /*var notification = new UILocalNotification();
            notification.AlertBody = "Hello iBeacon";
            UIApplication.SharedApplication.PresentLocalNotificationNow(notification);*/
            Debug.WriteLine("Found Beacon");
            Debug.WriteLine(e.Region.Identifier);
            NearestBeacon.Text = "Found Beacon";
        }

        private async void LocationManager_DidRangeBeacons(object sender, CLRegionBeaconsRangedEventArgs e)
        {
            await Task.Delay(0);
            if (e.Beacons.Length > 0)
            {
                Debug.WriteLine("Found Beacon");
                Debug.WriteLine(e.Beacons[0].ProximityUuid);
                NearestBeacon.Text = "Found Beacon";
            }
        }

        private void LocationManager_AuthorizationChanged(object sender, CLAuthorizationChangedEventArgs e)
        {
            Debug.WriteLine("Status: {0}", e.Status);
            if(e.Status == CLAuthorizationStatus.AuthorizedAlways){
                beaconUUID = new NSUuid(uuid);

                beaconRegion = new CLBeaconRegion(beaconUUID, beaconMajor, beaconMinor, beaconId);
                locationManager.StartMonitoring(beaconRegion);
                locationManager.StartRangingBeacons(beaconRegion);
                //DetectBeaconOn(10000).Wait();
            }
        }

        public override void ViewDidAppear(bool animated)
		{
            base.ViewDidAppear(animated);


            //DetectBeacon();
		}

		public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }


    }
}
