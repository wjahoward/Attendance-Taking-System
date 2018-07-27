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
using Plugin.Connectivity;

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
				//CheckNetworkRechability();

				/*Task.Factory.StartNew(() =>
				{
					GetModule();
				});*/
				//Thread thread = new Thread(HandleThreadStart);

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
      
		private async void GetModule()
        {
			try{
				studentTimetable = await DataAccess.GetStudentTimetable();
                //studentModule = studentTimetable.GetCurrentModule();

				/*if (studentModule.abbr != "")
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
					//return studentModule;
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
					//return null;
                }*/
			} catch (Exception ex){
                InvokeOnMainThread(() =>
                {
					Console.WriteLine("test");
                    UserDialogs.Instance.HideLoading();
					PresentViewController(CustomAlert.CreateUIAlertController("Wifi not on", ex.Message, "Retry"), true, null);
                });
				//return null;
			}
        }

        private void InitLocationManager()
		{
			locationManager = new CLLocationManager();
            locationManager.AuthorizationChanged += LocationManager_AuthorizationChanged;
			locationManager.RangingBeaconsDidFailForRegion += rangingBeaconsDidFailForRegion;
            locationManager.RegionEntered += LocationManager_RegionEntered;
            locationManager.RegionLeft += LocationManager_RegionLeft;
            locationManager.DidRangeBeacons += LocationManager_DidRangeBeacons;
            locationManager.RequestAlwaysAuthorization();
		}

		private void CheckNetworkRechability()
        {
            Thread checkNetworkActiveThread = new Thread(new ThreadStart(CheckNetworkAvailable));
            checkNetworkActiveThread.Start();
        }

		private async void CheckNetworkAvailable()
		{
			bool isNetwork = await Task.Run(() => this.CheckInternetStatus());
			bool isDialogShowing = false;

			if (!isNetwork)
            {
				InvokeOnMainThread(() => {
                    try
                    {

                        if (!isDialogShowing)
                        {
                            isDialogShowing = true;
							UserDialogs.Instance.HideLoading();
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("NetworkReachability -> CheckNetworkRechability:" + ex.Message);
                    }
                });
            }
            else
            {
				GetModule();
            }
		}

		public bool CheckInternetStatus()
        {
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            Debug.WriteLine(internetStatus);

            var url = new NSUrl("App-prefs:root=WIFI");

            if (internetStatus.Equals(NetworkStatus.NotReachable))
            {
                PresentViewController(CustomAlert.CreateUIAlertController(DataAccess.NoInternetConnection, "Internet connection is required for this app to function properly", "Go to settings", "App-prefs:root=WIFI"), true, null);

                return false;
            }
            else
            {
                return true;
            }
        }

		private void rangingBeaconsDidFailForRegion(object sender, CLRegionBeaconsFailedEventArgs e)
		{
			InvokeOnMainThread(() =>
			{
				
			} );
			
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
			await Task.Run(() =>
			{
				if (e.Beacons.Length > 0)
				{
					InvokeOnMainThread(() =>
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
						AttendanceCodeTextField.Text = atsCode.Substring(0, 1) + "****" + atsCode.Substring(5, 1);
						AttendanceCodeTextField.UserInteractionEnabled = false;
					});

				}
				else
				{

					InvokeOnMainThread(() =>
					{
						if (SharedData.currentRetry < SharedData.maxRetry)
						{
							var viewController = this.Storyboard.InstantiateViewController("BeaconOutOfRangeController");

							if (viewController != null)
							{
								this.NavigationController.PresentViewController(viewController, true, null);
							}
						}
						else
						{
						}

						SharedData.currentRetry++;
					});
                    
				}
			});
            
        }

        private void LocationManager_AuthorizationChanged(object sender, CLAuthorizationChangedEventArgs e)
        {
            Debug.WriteLine("Status: {0}", e.Status);
            if(e.Status == CLAuthorizationStatus.AuthorizedAlways){            
				beaconRegion = new CLBeaconRegion(beaconUUID, SharedData.beaconId);
                locationManager.StartMonitoring(beaconRegion);
                locationManager.StartRangingBeacons(beaconRegion);            
				/*Task.Run(async () =>
                {
                    locationManager.StartRangingBeacons(beaconRegion); 
                    // do something with time...
                });
				var viewController = this.Storyboard.InstantiateViewController("BeaconOutOfRangeController");

                if (viewController != null)
                {
                    this.PresentViewController(viewController, true, null);
                }*/
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

