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
using SystemConfiguration;

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

        UIAlertController okAlertNetworkController;
        UIAlertController okAlertSubmitATSSuccessController;

        public BeaconRangingController(IntPtr handle) : base(handle)
        {

        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            this.NavigationItem.Title = "Phone Ranging";

            AttendanceCodeTextField.ShouldReturn = delegate
            {
                AttendanceCodeTextField.ResignFirstResponder();
                return true;
            };

            EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField.ShouldReturn = delegate {
                EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField.ResignFirstResponder();
                return true;
            };

            AddDoneButtonToNumericKeyboard(AttendanceCodeTextField);
            AddDoneButtonToNumericKeyboard(EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField);

            this.NavigationController.NavigationBar.BarTintColor = UIColor.FromRGB(SharedData.primaryColourRGB[0], SharedData.primaryColourRGB[1], SharedData.primaryColourRGB[2]);
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
            this.NavigationController.NavigationBar.TitleTextAttributes = new UIStringAttributes()
            {
                ForegroundColor = UIColor.White
            };
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            // this is to check if the user has already tried to range for the beacon (at least once)
            // and turn off Bluetooth
            CommonClass.checkBluetoothRangingOnce = false;

            StudentSubmitButton.Layer.CornerRadius = SharedData.buttonCornerRadius;
            StudentSubmitButton.Hidden = true;

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());

            StudentSubmitButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                if (CheckConnectToSPWiFi() == true)
                {
                    ShowSubmittedATSDialog();
                }
                else 
                {
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

            // reset the number of retries to 0 if student wants to submit ATS code again - range for phone
            SharedData.currentRetry = 0;

            okAlertSubmitATSSuccessController = UIAlertController.Create("Success", "You have successfully submitted your attendance!", UIAlertControllerStyle.Alert);

            okAlertSubmitATSSuccessController.AddAction(UIAlertAction.Create("LOGOUT", UIAlertActionStyle.Default, SubmitATSSuccessful));

            PresentViewController(okAlertSubmitATSSuccessController, true, null);
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
            UIAlertController okAlertSubmitATSController = UIAlertController.Create("", "Please turn on SP WiFi to submit your ATS Code!", UIAlertControllerStyle.Alert);
            okAlertSubmitATSController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));
            PresentViewController(okAlertSubmitATSController, true, null);
        }

        partial void AttendanceCodeManuallyTextField(UITextField sender)
        {
            // ensure the number inputted is of 6 digit
            if (EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField.Text.Length == 6)
            {
                StudentSubmitButton.Hidden = false;
            }
            else
            {
                StudentSubmitButton.Hidden = true;
            }
        }

        partial void AttendanceCodeTextFieldTextChanged(UITextField sender)
        {
            // ensure the number inputted is of 6 digit
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
            if (CheckConnectToSPWiFi() == false)
            {
                InvokeOnMainThread(() =>
                {
                    ShowNoNetworkController();
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

                            // if the number of retries user tried to range for the phone is less than or equal to 3
                            if (SharedData.currentRetry <= 3) {
                                await CheckBluetooth();
                                if (CommonClass.checkBluetooth == true)
                                {
                                    beaconUUID = new NSUuid(studentBeaconKey);
                                    InitLocationManager();
                                }
                            }
                            // else if user unable to range for phone after 3 retries
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
                        ShowNoNetworkController();
                    });
                }
            }
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


        private void CantRangeForBeacon()
        {  
            CommonClass.checkBluetoothRangingOnce = true;

            FoundBeacon.Hidden = true;
            StudentSubmitButton.Hidden = true;
            StudentAttendanceIcon.Image = UIImage.FromBundle("Location Icon.png");
            EnterAttendanceCodeButton.Hidden = true;

            AttendanceCodeTextField.Hidden = true;
            AttendanceCodeTextField.Selected = true;

            EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField.BecomeFirstResponder();
            EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField.Hidden = false;
        }

        private void ShowNoNetworkController()
        {
            // Create Alert
            okAlertNetworkController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            // Add Action
            okAlertNetworkController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));

            // Present Alert
            PresentViewController(okAlertNetworkController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            InvokeOnMainThread(() =>
            {
                GetModule();
            });
        }

        public bool CheckConnectToSPWiFi()
        {
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            if (internetStatus.Equals(NetworkStatus.NotReachable))
            {
                return false;
            }
            else
            {
                try
                {
                    NSDictionary dict;
                    var status = CaptiveNetwork.TryCopyCurrentNetworkInfo("en0", out dict);
                    var ssid = dict[CaptiveNetwork.NetworkInfoKeySSID];
                    string network = ssid.ToString();

                    if (network != "SPStudent")
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        // methods involved during ranging
        private void InitLocationManager()
        {
            locationManager = new CLLocationManager();
            locationManager.AuthorizationChanged += LocationManager_AuthorizationChanged;
            //locationManager.RangingBeaconsDidFailForRegion += rangingBeaconsDidFailForRegion;
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
            FoundBeacon.Text = "Ranging for phone...";
        }

        private void LocationManager_RegionEntered(object sender, CLRegionEventArgs e)
        {
            FoundBeacon.Text = "Found Phone";
            StudentSubmitButton.Hidden = false;
        }

        private async void LocationManager_DidRangeBeacons(object sender, CLRegionBeaconsRangedEventArgs e)
        {
            await Task.Run(() =>
            {
                if (e.Beacons.Length > 0) {
                    {
                        InvokeOnMainThread(() =>
                        {
                            atsCode = e.Beacons[0].Major.ToString() + e.Beacons[0].Minor.ToString();

                            // decryption of encrypted atsCode transmitted by lecturer's phone
                            string atsCodeMajor = Decryption(e.Beacons[0].Major.ToString()).ToString();
                            string atsCodeMinor = Decryption(e.Beacons[0].Minor.ToString()).ToString();
                            atsCode = atsCodeMajor + atsCodeMinor;

                            FoundBeacon.Text = "Found Phone";
                            StudentSubmitButton.Hidden = false;
                            StudentAttendanceIcon.Image = UIImage.FromBundle("Location Icon.png");
                            EnterAttendanceCodeButton.Hidden = true;
                            EnterAttendanceCodeFieldManuallyIfUnableToRangeTextField.Hidden = true;
                            AttendanceCodeTextField.Hidden = false;

                            // this is to prevent the user to know what is the exact atsCode
                            // otherwise the user can pass the atsCode to his other friends, and assuming
                            // they are keying in the ATS code manually, which defeats the purpose of having
                            // this transmission and ranging process
                            // note: Submission of ATS Code manually is for contingency plan
                            AttendanceCodeTextField.Text = atsCode.Substring(0, 1) + "****" + atsCode.Substring(5, 1);
                            AttendanceCodeTextField.UserInteractionEnabled = false;
                        });
                    }
                }

                else
                {
                    InvokeOnMainThread(() =>
                    {
                        // stop ranging when user goes to BeaconOutOfRangeController page
                        locationManager.DidRangeBeacons -= LocationManager_DidRangeBeacons;

                        // increment the number of tries the user has tried to range for the phone
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

        private int Decryption(string encryptedCode)
        {
            int numberATSCode = Convert.ToInt32(encryptedCode);
            int newATSCodeEncrypted = (numberATSCode / 7 - 136) / 5;
            return newATSCodeEncrypted;
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