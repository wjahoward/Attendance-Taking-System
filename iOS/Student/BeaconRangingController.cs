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
        CLBeaconRegion beaconRegion;
        NSUuid beaconUUID;

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
			StudentSubmitButton.Hidden = true;

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
			Debug.WriteLine("No beacon found");
			FoundBeacon.Text = "Searching for beacon...";
        }

        private void LocationManager_RegionEntered(object sender, CLRegionEventArgs e)
        {
            Debug.WriteLine("Found Beacon");
            FoundBeacon.Text = "Found Beacon";
			StudentSubmitButton.Hidden = false;
        }

        private async void LocationManager_DidRangeBeacons(object sender, CLRegionBeaconsRangedEventArgs e)
        {
            await Task.Delay(0);
            if (e.Beacons.Length > 0)
            {
                Debug.WriteLine("Found Beacon");
                Debug.WriteLine(e.Beacons[0].ProximityUuid);

                FoundBeacon.Text = "Found Beacon";
				StudentSubmitButton.Hidden = false;
				StudentAttendanceIcon.Image = UIImage.FromBundle("Location Icon.png");
            }
        }

        private void LocationManager_AuthorizationChanged(object sender, CLAuthorizationChangedEventArgs e)
        {
            Debug.WriteLine("Status: {0}", e.Status);
            if(e.Status == CLAuthorizationStatus.AuthorizedAlways){
				beaconUUID = new NSUuid(lecturerBeacon.BeaconKey);

				beaconRegion = new CLBeaconRegion(new NSUuid(lecturerBeacon.BeaconKey), (ushort) lecturerBeacon.Major, (ushort) lecturerBeacon.Minor, Resources.beaconId);
                locationManager.StartMonitoring(beaconRegion);
                locationManager.StartRangingBeacons(beaconRegion);
            }
			else
			{
				Debug.WriteLine("Status: {0}", e.Status);
			}
        }

		private void SubmitATS()
		{
			studentSubmission = new StudentSubmission(admissionId, lecturerBeacon.BeaconKey.ToLower(), ats_Student, DateTime.UtcNow);;

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

