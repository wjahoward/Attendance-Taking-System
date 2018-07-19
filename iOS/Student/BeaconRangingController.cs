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
using System.Text;
using System.Threading;
using Acr.UserDialogs;
using System.Drawing;

namespace BeaconTest.iOS
{
    public partial class BeaconRangingController : UIViewController
    {      
		StudentTimetable studentTimetable;
		StudentModule studentModule;

        CLLocationManager locationManager;
        CLBeaconRegion beaconRegion;
        NSUuid beaconUUID;
		string atsCode;

        public BeaconRangingController(IntPtr handle) : base(handle)
        {
            
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
			this.NavigationItem.Title = "Beacon Ranging";

			AttendanceCodeTextField.ShouldReturn = delegate
            {
				AttendanceCodeTextField.ResignFirstResponder();
                return true;
            };
         
			AddDoneButtonToNumericKeyboard(AttendanceCodeTextField);

			this.NavigationController.NavigationBar.BarTintColor = UIColor.FromRGB(BeaconTest.SharedData.primaryColourRGB[0], BeaconTest.SharedData.primaryColourRGB[1], BeaconTest.SharedData.primaryColourRGB[2]);
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
            this.NavigationController.NavigationBar.TitleTextAttributes = new UIStringAttributes()
            {
                ForegroundColor = UIColor.White
            };

			CommonClass.checkBluetooth = true;

            if (CommonClass.checkBluetooth == true)
            {
                StudentSubmitButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;
                StudentSubmitButton.Hidden = true;

                UserDialogs.Instance.ShowLoading("Retrieving module info...");
                ThreadPool.QueueUserWorkItem(o => GetModule());

                StudentSubmitButton.TouchUpInside += (object sender, EventArgs e) =>
                {
                    //SubmitATS();
                };

                EnterAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) =>
                {
                    AttendanceCodeTextField.Hidden = false;
                    AttendanceCodeTextField.Selected = true; ;
                };
            }
            else {
                //UINavigationController navigationController = new UINavigationController();
                var newController = (UIViewController)Storyboard.InstantiateViewController("StudentBluetoothSwitchOffController");

                //this.NavigationController.PopViewController(true);
				this.PresentViewController(newController, true, null);

            }
            /*StudentSubmitButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;
            StudentSubmitButton.Hidden = true;

            UserDialogs.Instance.ShowLoading("Retrieving module info...");
            ThreadPool.QueueUserWorkItem(o => GetModule());

                StudentSubmitButton.TouchUpInside += (object sender, EventArgs e) =>
                {
                    //SubmitATS();
                };

                EnterAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) =>
                {
                    AttendanceCodeTextField.Hidden = false;
                    AttendanceCodeTextField.Selected = true; ;
                };*/

           
                // Perform any additional setup after loading the view, typically from a nib.
                /*StudentSubmitButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;
                StudentSubmitButton.Hidden = true;

                UserDialogs.Instance.ShowLoading("Retrieving module info...");
                ThreadPool.QueueUserWorkItem(o => GetModule());

                StudentSubmitButton.TouchUpInside += (object sender, EventArgs e) =>
                {
                //SubmitATS();
            };

                EnterAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) =>
                {
                    AttendanceCodeTextField.Hidden = false;
                    AttendanceCodeTextField.Selected = true; ;
                };
            }*/
            
        }

		partial void AttendanceCodeTextFieldTextChanged(UITextField sender)
        {
			if (AttendanceCodeTextField.Text.Length == 6)
            {
                StudentSubmitButton.Hidden = false;
			}
			else{
				StudentSubmitButton.Hidden = true;
			}
        }
      
		private void GetModule()
        {
            studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
            studentModule = studentTimetable.GetCurrentModule();
			if(studentModule.abbr != "")
			{
				InvokeOnMainThread(() =>
                {
                    ModuleNameLabel.Text = studentTimetable.GetCurrentModule().abbr + " (" + studentTimetable.GetCurrentModule().code + ")";
                    TimePeriodLabel.Text = studentTimetable.GetCurrentModule().time;
                    LocationLabel.Text = studentTimetable.GetCurrentModule().location;
					UserDialogs.Instance.HideLoading();        
					beaconUUID = new NSUuid(DataAccess.StudentGetBeaconKey());
                    InitLocationManager();
                });            
			}
			else
			{
				InvokeOnMainThread(() =>
                {
					ModuleNameLabel.Text = "No lessons today";
					TimePeriodLabel.Hidden = true;
					LocationLabel.Hidden = true;
					UserDialogs.Instance.HideLoading();
                });
			}
            
        }

        private void InitLocationManager()
		{
			locationManager = new CLLocationManager();
            locationManager.AuthorizationChanged += LocationManager_AuthorizationChanged;
            locationManager.RegionEntered += LocationManager_RegionEntered;
            locationManager.RegionLeft += LocationManager_RegionLeft;
            locationManager.DidRangeBeacons += LocationManager_DidRangeBeacons;
            locationManager.RequestAlwaysAuthorization();
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
				atsCode = e.Beacons[0].Major.ToString() + e.Beacons[0].Minor.ToString();
				Debug.WriteLine(atsCode);

                FoundBeacon.Text = "Found Beacon";
				StudentSubmitButton.Hidden = false;
				StudentAttendanceIcon.Image = UIImage.FromBundle("Location Icon.png");
				EnterAttendanceCodeButton.Hidden = true;
				AttendanceCodeTextField.Hidden = false;
				AttendanceCodeTextField.Text = atsCode;
				AttendanceCodeTextField.UserInteractionEnabled = false;            
            }
            else {
                FoundBeacon.Text = "Searching for beacon...";
            }
        }

        private void LocationManager_AuthorizationChanged(object sender, CLAuthorizationChangedEventArgs e)
        {
            Debug.WriteLine("Status: {0}", e.Status);
            if(e.Status == CLAuthorizationStatus.AuthorizedAlways){            
				beaconRegion = new CLBeaconRegion(beaconUUID, SharedData.beaconId);
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

		protected void AddDoneButtonToNumericKeyboard(UITextField textField)
        {

            UIToolbar toolbar = new UIToolbar(new RectangleF(0.0f, 0.0f, 50.0f, 44.0f));
            var doneButton = new UIBarButtonItem(UIBarButtonSystemItem.Done, delegate
            {
                textField.ResignFirstResponder();
            });

            toolbar.Items = new UIBarButtonItem[] {
            new UIBarButtonItem (UIBarButtonSystemItem.FlexibleSpace),
            doneButton
        };

            textField.InputAccessoryView = toolbar;
        }
    }
}

