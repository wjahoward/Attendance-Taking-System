using System;
using CoreLocation;
using CoreBluetooth;
using CoreFoundation;
using Foundation;
using UIKit;
using System.Linq;
using System.Threading.Tasks;
using System.Diagnostics;
using BeaconTest.Models;

namespace BeaconTest.iOS
{
    public partial class BeaconRangingController : UIViewController
    {
		LecturerBeacon lecturerBeacon;
		StudentSubmission studentSubmission;

		string admissionId, beaconKey, ats_Student;

        CLLocationManager locationManager;
        //static readonly string uuid = "E4C8A4FC-F68B-470D-959F-29382AF72CE7";
        //static readonly string regionId = "Monkey";
        CLBeaconRegion beaconRegion;
        NSUuid beaconUUID;
        const ushort beaconMajor = 1;
        const ushort beaconMinor = 2;
        const string beaconId = "123";
		const string uuid = "2F234454-CF6D-4A0F-ADF2-F4911BA9FFA5";

        public BeaconRangingController(IntPtr handle) : base(handle)
        {
            
        }

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
            StudentSubmitButton.Layer.CornerRadius = BeaconTest.Resources.buttonCornerRadius;
			StudentSubmitButton.Hidden = false;

			lecturerBeacon = DataAccess.StudentGetBeacon().Result;

			admissionId = "p1234567";
			beaconKey = "";
			ats_Student = "345678";

            locationManager = new CLLocationManager();
            locationManager.AuthorizationChanged += LocationManager_AuthorizationChanged;
            locationManager.RegionEntered += LocationManager_RegionEntered;
            locationManager.RegionLeft += LocationManager_RegionLeft;
            locationManager.DidRangeBeacons += LocationManager_DidRangeBeacons;
            locationManager.RequestAlwaysAuthorization();

            StudentSubmitButton.TouchUpInside += (object sender, EventArgs e) => 
            {
				SubmitATS();
            };

			EnterAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) => 
			{
				AttendanceCodeTextField.Hidden = false;
				AttendanceCodeTextField.Selected = true;;
			};
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
            FoundBeacon.Text = "Found Beacon";
        }

        private async void LocationManager_DidRangeBeacons(object sender, CLRegionBeaconsRangedEventArgs e)
        {
            await Task.Delay(0);
            if (e.Beacons.Length > 0)
            {
                Debug.WriteLine("Found Beacon");
                Debug.WriteLine(e.Beacons[0].ProximityUuid);
				//bool submitted;            
				//submitted = DataAccess.StudentSubmitATS(studentSubmission).Result;
                FoundBeacon.Text = "Found Beacon";
				StudentSubmitButton.Hidden = false;
				locationManager.StopRangingBeacons(beaconRegion);
            }
        }

        private void LocationManager_AuthorizationChanged(object sender, CLAuthorizationChangedEventArgs e)
        {
            Debug.WriteLine("Status: {0}", e.Status);
            if(e.Status == CLAuthorizationStatus.AuthorizedAlways){
                beaconUUID = new NSUuid(uuid);

                beaconRegion = new CLBeaconRegion(beaconUUID, beaconMajor, beaconMinor, beaconId);
				beaconRegion = new CLBeaconRegion(new NSUuid(lecturerBeacon.BeaconKey), (ushort) lecturerBeacon.Major, (ushort) lecturerBeacon.Minor, beaconId);
                locationManager.StartMonitoring(beaconRegion);
                locationManager.StartRangingBeacons(beaconRegion);
                //DetectBeaconOn(10000).Wait();
            }
        }

		private void SubmitATS()
		{
			studentSubmission = new StudentSubmission(admissionId, uuid.ToLower(), ats_Student, DateTime.UtcNow);;

			bool submitted = DataAccess.StudentSubmitATS(studentSubmission).Result;

			if (submitted)
			{
				PresentViewController(CustomAlert.CreateUIAlertController("ATS Submitted", "You have submitted your attendance at " + DateTime.UtcNow, "OK"), true, null);
			}
			else
			{
				PresentViewController(CustomAlert.CreateUIAlertController("Error submitting ATS", "There was an error in submitting your attendance", "OK"), true, null);
			}

		}

        public override void ViewDidAppear(bool animated)
		{
            base.ViewDidAppear(animated);         
		}

		public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }


    }
}

