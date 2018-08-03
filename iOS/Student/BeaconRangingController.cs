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
using Plugin.BLE.Abstractions.Contracts;

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
        string studentBeaconKey;

        UIAlertController okAlertController;

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
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            CommonClass.checkBluetoothRangingOnce = false;

            StudentSubmitButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;
            StudentSubmitButton.Hidden = true;

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());

            StudentSubmitButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                if (CheckInternetStatus() == true)
                {
                    ShowSubmittedATSDialog();
                }
                else {
                    NoNetworkBeforeSubmitATS();
                }
            };

            EnterAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                AttendanceCodeTextField.Hidden = false;
                AttendanceCodeTextField.Selected = true;
            };
        }

        private void ShowSubmittedATSDialog() {
            okAlertController = UIAlertController.Create("Success", "You have successfully submitted your attendance!", UIAlertControllerStyle.Alert);

            okAlertController.AddAction(UIAlertAction.Create("LOGOUT", UIAlertActionStyle.Default, SubmitATSSuccessful));

            PresentViewController(okAlertController, true, null);
        }

        private void SubmitATSSuccessful(UIAlertAction obj)
        {
            var viewController = this.Storyboard.InstantiateViewController("MainViewController");

            if (viewController != null)
            {
                this.PresentViewController(viewController, true, null);
            }
        }

        private void NoNetworkBeforeSubmitATS() 
        {
            okAlertController = UIAlertController.Create("Error", "Please ensure Wifi is enabled to submit your ATS!", UIAlertControllerStyle.Alert);

            okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

            PresentViewController(okAlertController, true, null);
        }

        private async Task CheckBluetooth()
        {
            var state = await GetBluetoothState(Plugin.BLE.CrossBluetoothLE.Current);
            if (state == BluetoothState.Off)
            {
                CommonClass.checkBluetooth = false;
                if (CommonClass.checkBluetoothRangingOnce == false)
                {
                    var studentBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("StudentBluetoothSwitchOffController");
                    this.NavigationController.PushViewController(studentBluetoothSwitchOffController, true);
                }
            }

            else
            {
                CommonClass.checkBluetooth = true;
            }

            Plugin.BLE.CrossBluetoothLE.Current.StateChanged += (o, e) =>
            {
                if (e.NewState == BluetoothState.Off)
                {
                    CommonClass.checkBluetooth = false;
                    if (CommonClass.checkBluetoothRangingOnce == false)
                    {
                        var studentBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("StudentBluetoothSwitchOffController");
                        this.NavigationController.PushViewController(studentBluetoothSwitchOffController, true);
                    }
                }
                else
                {
                    CommonClass.checkBluetooth = true;
                }
            };
        }

        private Task<BluetoothState> GetBluetoothState(IBluetoothLE ble)
        {
            var tcs = new TaskCompletionSource<BluetoothState>();

            if (ble.State != BluetoothState.Unknown)
            {
                tcs.SetResult(ble.State);
            }

            else
            {
                EventHandler<Plugin.BLE.Abstractions.EventArgs.BluetoothStateChangedArgs> handler = null;
                handler += (o, e) =>
                {
                    Plugin.BLE.CrossBluetoothLE.Current.StateChanged -= handler;
                    tcs.SetResult(e.NewState);
                };
                Plugin.BLE.CrossBluetoothLE.Current.StateChanged += handler;
            }

            return tcs.Task;
        }

        partial void AttendanceCodeTextFieldTextChanged(UITextField sender)
        {
            if (AttendanceCodeTextField.Text.Length == 6)
            {
                StudentSubmitButton.Hidden = false;
            }
            else
            {
                StudentSubmitButton.Hidden = true;
            }
        }

        private void GetModule()
        {
            if (CheckInternetStatus() == false)
            {
                InvokeOnMainThread(() =>
                {
                    ShowAlertDialog();
                });
            }
            else
            {
                try
                {
                    studentTimetable = DataAccess.GetStudentTimetable().Result;
                    studentModule = studentTimetable.GetCurrentModule();
                    studentBeaconKey = DataAccess.StudentGetBeaconKey();
                    if (studentModule.abbr != "")
                    {
                        InvokeOnMainThread(async () =>
                        {
                            ModuleNameLabel.Text = studentTimetable.GetCurrentModule().abbr;
                            ModuleCodeLabel.Text = studentTimetable.GetCurrentModule().code;
                            ModuleTypeLabel.Text = studentTimetable.GetCurrentModule().type;
                            LocationLabel.Text = studentTimetable.GetCurrentModule().location;
                            TimePeriodLabel.Text = studentTimetable.GetCurrentModule().time;
                            UserDialogs.Instance.HideLoading();

                            if (SharedData.currentRetry <= 3) {
                                await CheckBluetooth();
                                if (CommonClass.checkBluetooth == true)
                                {
                                    beaconUUID = new NSUuid(studentBeaconKey);
                                    InitLocationManager();
                                }
                            }
                            else {
                                CantRangeForBeacon();
                            }
                        });
                    }
                    else
                    {
                        InvokeOnMainThread(() =>
                        {
                            ModuleCodeLabel.Hidden = true;
                            ModuleTypeLabel.Hidden = true;
                            StudentAttendanceIcon.Hidden = true;
                            TimeAttendanceIcon.Hidden = true;
                            ModuleNameLabel.Text = "No lessons today";
                            TimePeriodLabel.Hidden = true;
                            LocationLabel.Hidden = true;
                            FoundBeacon.Hidden = true;
                            EnterAttendanceCodeButton.Hidden = true;

                            UserDialogs.Instance.HideLoading();
                        });
                    }
                }
                catch (Exception ex)
                {
                    InvokeOnMainThread(() =>
                    {
                        ShowAlertDialog();
                    });
                }
            }
        }

        private void CantRangeForBeacon()
        {  
            CommonClass.checkBluetoothRangingOnce = true;

            FoundBeacon.Hidden = true;
            StudentSubmitButton.Hidden = true;
            StudentAttendanceIcon.Image = UIImage.FromBundle("Location Icon.png");
            EnterAttendanceCodeButton.Hidden = true;

            AttendanceCodeTextField.BecomeFirstResponder();
            AttendanceCodeTextField.Hidden = false;
            AttendanceCodeTextField.Selected = true;

            SharedData.currentRetry = 0;
        }

        private void ShowAlertDialog()
        {
            // Create Alert
            okAlertController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            // Add Action
            okAlertController.AddAction(UIAlertAction.Create("Settings", UIAlertActionStyle.Default, GoToWifiSettingsClick));
            okAlertController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));

            // Present Alert
            PresentViewController(okAlertController, true, null);
        }

        private void GoToWifiSettingsClick(UIAlertAction obj)
        {
            var url = new NSUrl("App-prefs:root=WIFI");
            UIApplication.SharedApplication.OpenUrl(url);
            PresentViewController(okAlertController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            InvokeOnMainThread(() =>
            {
                GetModule();
            });
        }

        public bool CheckInternetStatus()
        {
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            var url = new NSUrl("App-prefs:root=WIFI");

            if (internetStatus.Equals(NetworkStatus.NotReachable))
            {
                return false;
            }
            else
            {
                return true;
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

        private void rangingBeaconsDidFailForRegion(object sender, CLRegionBeaconsFailedEventArgs e)
        {
            InvokeOnMainThread(() =>
            {

            });
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

                        //string atsCodeMajor = Decryption(e.Beacons[0].Major.ToString()).ToString();
                        //string atsCodeMinor = Decryption(e.Beacons[0].Minor.ToString()).ToString();
                        //atsCode = atsCodeMajor + atsCodeMinor;

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
                        locationManager.DidRangeBeacons -= LocationManager_DidRangeBeacons;

                        SharedData.currentRetry += 1;

                        var viewController = this.Storyboard.InstantiateViewController("BeaconOutOfRangeController");

                        if (viewController != null)
                        {
                            this.NavigationController.PresentViewController(viewController, true, null);
                        }
                    });
                }
            });
        }

        private int Decryption(string encryptedCode) {
            int numberATSCode = Convert.ToInt32(encryptedCode);
            int newATSCodeEncrypted = (numberATSCode / 7 - 136) / 5;
            return newATSCodeEncrypted;
        }

        private void LocationManager_AuthorizationChanged(object sender, CLAuthorizationChangedEventArgs e)
        {
            Debug.WriteLine("Status: {0}", e.Status);
            Console.WriteLine(e.Status == CLAuthorizationStatus.AuthorizedAlways);
            if (e.Status == CLAuthorizationStatus.AuthorizedAlways)
            {
                beaconRegion = new CLBeaconRegion(beaconUUID, SharedData.beaconId);
                locationManager.StartMonitoring(beaconRegion);
                locationManager.StartRangingBeacons(beaconRegion);
            }
            else
            {
                Debug.WriteLine("Status: {0}", e.Status);
            }
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