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
using Plugin.Connectivity;
using System.Threading.Tasks;
using System.Drawing;
using System.Timers;

namespace BeaconTest.iOS
{
    public partial class BeaconTransmitController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;
		LecturerTimetable lecturerTimetable;
		LecturerModule lecturerModule;

        CLBeaconRegion beaconRegion;

        UIAlertController okAlertController;

        System.Timers.Timer beaconTransmitTimer = new System.Timers.Timer();

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

            /*this.NavigationController.NavigationBar.BarTintColor = UIColor.FromRGB(BeaconTest.SharedData.primaryColourRGB[0], BeaconTest.SharedData.primaryColourRGB[1], BeaconTest.SharedData.primaryColourRGB[2]);
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
            this.NavigationController.NavigationBar.TitleTextAttributes = new UIStringAttributes();*/

            LecturerAttendanceCodeTextField.ShouldReturn = delegate
            {
                LecturerAttendanceCodeTextField.ResignFirstResponder();
                return true;
            };

            AddDoneButtonToNumericKeyboard(LecturerAttendanceCodeTextField);

            LecturerOverrideButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;
            LecturerOverrideButton.Hidden = true;

            LecturerOverrideAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                LecturerAttendanceCodeTextField.BecomeFirstResponder();
                LecturerAttendanceCodeTextField.Hidden = false;
                LecturerAttendanceCodeTextField.Selected = true;
            };

            LecturerOverrideButton.TouchUpInside += async (object sender, EventArgs e) =>
            {
                UserDialogs.Instance.ShowLoading("Overriding ATS code in progress...");

                if (CheckInternetStatus() == false)
                {
                    okAlertController = UIAlertController.Create("", "Please turn on Wifi to override ATS Code!", UIAlertControllerStyle.Alert);
                }

                else {
                    try
                    {
                        lecturerModule.atscode = Convert.ToString(LecturerAttendanceCodeTextField.Text);
                        await DataAccess.LecturerOverrideATS(lecturerModule);
                        AttendanceCodeLabel.Text = lecturerModule.atscode;
                        LecturerAttendanceCodeTextField.Text = "";
                        LecturerOverrideButton.Hidden = true;
                        okAlertController = UIAlertController.Create("", "You have successfully override the ATS Code!", UIAlertControllerStyle.Alert);

                        peripheralManager.StopAdvertising();
                        InitBeacon();
                    }
                    catch (Exception ex)
                    {
                        okAlertController = UIAlertController.Create("", "Please turn on Wifi to override ATS Code!", UIAlertControllerStyle.Alert);
                    }
                }

                okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                UserDialogs.Instance.HideLoading();

                PresentViewController(okAlertController, true, null);
            };

            ViewAttendanceButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                CommonClass.beaconTransmitBluetoothThreadCheck = false;
                peripheralManager.StopAdvertising();
                beaconTransmitTimer.Stop();
            };

            var locationManager = new CLLocationManager();
            locationManager.RequestWhenInUseAuthorization();
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = true;

            CommonClass.beaconTransmitBluetoothThreadCheck = true;

            // uncomment the timer lines to make the session out works
            //beaconTransmitTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            //beaconTransmitTimer.Start();

            UserDialogs.Instance.ShowLoading("Retrieving module info...");
            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            currentTime += new TimeSpan(0, 0, 1);

            string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
            TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);
            Console.WriteLine(currentTimeTimeSpan);

            if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
            {
                peripheralManager.StopAdvertising();

                beaconTransmitTimer.Stop();

                InvokeOnMainThread(() =>
                {
                    okAlertController = UIAlertController.Create("Lesson Timeout", "You have reached 15 minutes of the lesson, please proceed back to Timetable page!", UIAlertControllerStyle.Alert);

                    okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, TimeIsUp));

                    PresentViewController(okAlertController, true, null);
                });
            }
        }

        private void TimeIsUp(UIAlertAction obj)
        {
            this.NavigationController.PopViewController(true);
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

        partial void LecturerAttendanceCodeTextFieldTextChanged(UITextField sender)
        {
            if (LecturerAttendanceCodeTextField.Text.Length == 6)
            {
                LecturerOverrideButton.Hidden = false;
            }
            else
            {
                LecturerOverrideButton.Hidden = true;
            }
        }

        private void InitBeacon()
		{
            //testing
                string atsCode = lecturerModule.atscode;
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
			switch(lecturerModule.type){
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
                    lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                    lecturerModule = lecturerTimetable.GetCurrentModule(CommonClass.moduleRowNumber);
                    if (lecturerModule != null)
                    {
                        InvokeOnMainThread(() =>
                        {
                            ModuleNameLabel.Text = lecturerModule.abbr + " (" + lecturerModule.code + ")";
                            TimePeriodLabel.Text = lecturerModule.time;
                            LocationLabel.Text = lecturerModule.location;
                            AttendanceCodeLabel.Text = lecturerModule.atscode;
                            UserDialogs.Instance.HideLoading();

                            CommonClass.atscode = lecturerModule.atscode;
                            CommonClass.moduleType = lecturerModule.type;

                            if (CommonClass.checkBluetooth == true)
                            {
                                InitBeacon();
                            }

                            CheckBluetoothRechability();
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
                catch (Exception ex)
                {
                    InvokeOnMainThread(() =>
                    {
                        ShowAlertDialog();
                    });
                }
            }
		}

        private void ShowAlertDialog() {
            okAlertController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            okAlertController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));
            okAlertController.AddAction(UIAlertAction.Create("Settings", UIAlertActionStyle.Default, GoToWifiSettingsClick));

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
            InvokeOnMainThread(() => {
                GetModule();
            });
        }

        public bool CheckInternetStatus()
        {
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            Debug.WriteLine(internetStatus);

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

        private void CheckBluetoothRechability()
        {
            Thread checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.beaconTransmitBluetoothThreadCheck == true)
            {
                bool isBluetooth = await Task.Run(() => this.BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            ModuleNameLabel.Text = "Module Name";
                            TimePeriodLabel.Text = "Time Period";
                            LocationLabel.Text = "Location";
                            AttendanceCodeLabel.Text = "Attendance Code";

                            peripheralManager.StopAdvertising();

                            var lecturerBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerBluetoothSwitchOffController");
                            this.NavigationController.PushViewController(lecturerBluetoothSwitchOffController, true);
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("BluetoothReachability -> CheckBluetoothRechability:" + ex.Message);
                        }
                    });
                }
                else
                {
                    CheckBluetoothAvailable();
                }
            }
            else {
                
            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (CommonClass.checkBluetooth == false)
            {
                return false;
            }
            return true;
        }
    }
}