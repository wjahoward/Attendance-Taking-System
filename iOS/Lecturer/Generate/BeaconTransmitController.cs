using System;
using UIKit;
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
using SystemConfiguration;

namespace BeaconTest.iOS
{
    public partial class BeaconTransmitController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;
		LecturerTimetable lecturerTimetable;
		LecturerModule lecturerModule;

        CLBeaconRegion beaconRegion;

        UIAlertController okAlertOverrideATSController;
        UIAlertController okAlertLessonTimeOutController;
        UIAlertController okAlertNetworkController;

        /* purpose of the timer is to check once the current time reaches 15 minutes of the start time of the lesson
        it will prompt and inform that the user the current time has already reached 15 minutes so as to prevent
        the continuation transmission of BLE signals and disallow the students to able to range for the phone */
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

            LecturerAttendanceCodeTextField.ShouldReturn = delegate
            {
                LecturerAttendanceCodeTextField.ResignFirstResponder();
                return true;
            };

            AddDoneButtonToNumericKeyboard(LecturerAttendanceCodeTextField);

            LecturerOverrideButton.Layer.CornerRadius = SharedData.buttonCornerRadius;
            LecturerOverrideButton.Hidden = true;

            LecturerOverrideAttendanceCodeButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                LecturerAttendanceCodeTextField.BecomeFirstResponder();
                LecturerAttendanceCodeTextField.Hidden = false;
                LecturerAttendanceCodeTextField.Selected = true;
            };

            /* the overriding of ATS code is meant for field testing purpose, and will not be implemented if 
            it is used in a production environment. So during field testing, after the lecturer generates
            the legitimate ATS code from the lesson, the lecturer will make sure of this ATS code and type in that
            ATS code, overriding the ATS code from the dummy lecturer's timetable data. After the ATS code has been 
            overrided, while transmitting the BLE signals with that ATS code, the students will be able to range for that
            phone with that ATS Code (upon successful detection of phone) and able to submit their attendance code successfully */
            LecturerOverrideButton.TouchUpInside += async (object sender, EventArgs e) =>
            {
                UserDialogs.Instance.ShowLoading("Overriding ATS code in progress...");

                if (CheckConnectToSPWiFi() == false)
                {
                    okAlertOverrideATSController = UIAlertController.Create("", "Please turn on SP WiFi to override ATS Code!", UIAlertControllerStyle.Alert);
                }

                else {
                    /* try-catch is necessary to override the ATS since is POST to a dummy URL which requires Internet
                    assuming in an event while trying to POST to a dummy URL, the phone that is connected to SP WiFi,
                    suddenly is disconnected from SP WiFi, without a try-catch, the app will crash. Therefore, having 
                    a try-catch to check if is connected to SP WiFi is crucial */
                    try
                    {
                        lecturerModule.atscode = Convert.ToString(LecturerAttendanceCodeTextField.Text);
                        await DataAccess.LecturerOverrideATS(lecturerModule);
                        AttendanceCodeLabel.Text = lecturerModule.atscode;
                        LecturerAttendanceCodeTextField.Text = "";
                        LecturerAttendanceCodeTextField.Hidden = true;
                        LecturerOverrideButton.Hidden = true;
                        okAlertOverrideATSController = UIAlertController.Create("", "You have successfully override the ATS Code!", UIAlertControllerStyle.Alert);

                        peripheralManager.StopAdvertising(); // stop transmitting BLE signals
                        InitBeacon(); //re-transmit with new major and minor values of ATS code 
                    }
                    catch (Exception ex)
                    {
                        okAlertOverrideATSController = UIAlertController.Create("", "Please turn on Wifi to override ATS Code!", UIAlertControllerStyle.Alert);
                    }
                }

                okAlertOverrideATSController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                UserDialogs.Instance.HideLoading();

                PresentViewController(okAlertOverrideATSController, true, null);
            };

            ViewAttendanceButton.Layer.CornerRadius = SharedData.buttonCornerRadius;
            ViewAttendanceButton.TouchUpInside += (object sender, EventArgs e) =>
            {
                if (LecturerAttendanceCodeTextField.Hidden == false || LecturerOverrideButton.Hidden == false)
                {
                    LecturerAttendanceCodeTextField.Hidden = true;
                    LecturerOverrideButton.Hidden = true;
                }

                CommonClass.beaconTransmitBluetoothThreadCheck = false; // stop the threading
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

            // can comment out the below 2 lines to not start the timer
            beaconTransmitTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            beaconTransmitTimer.Start();

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

            // if the current time reaches past at least 15 minutes of start time of lesson
            if (currentTimeTimeSpan >= CommonClass.maxTimeCheck) 
            {
                peripheralManager.StopAdvertising();

                beaconTransmitTimer.Stop();

                InvokeOnMainThread(() =>
                {
                    okAlertLessonTimeOutController = UIAlertController.Create("Lesson timeout", "You have reached 15 minutes of the lesson, please proceed back to Timetable page!", UIAlertControllerStyle.Alert);

                    okAlertLessonTimeOutController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, TimeIsUp));

                    PresentViewController(okAlertLessonTimeOutController, true, null);
                });
            }
        }

        private void TimeIsUp(UIAlertAction obj)
        {
            this.NavigationController.PopViewController(true); // navigate back to LecturerGenerateController page
        }

        // customise the keyboard with a "Done" button
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
            /*since ATS code is of 6 digits
            only when the user types a 6 digit number only then the submit button will appear
            and override the ATS code */
            if (LecturerAttendanceCodeTextField.Text.Length == 6)
            {
                LecturerOverrideButton.Hidden = false;
            }
            else
            {
                LecturerOverrideButton.Hidden = true;
            }
        }

        // start to setup phone as beacon and transmit BLE signals
        private void InitBeacon()
		{
            string atsCode = lecturerModule.atscode;
            string atsCode1stHalf = atsCode.Substring(0, 3);
            string atsCode2ndHalf = atsCode.Substring(3, 3);

            /* simple encryption to prevent other users using the third-party app such as Locate to be
            able to know what is the ATS code */
            string atsCode1stHalfEncrypted = Encryption(atsCode1stHalf).ToString();
            string atsCode2ndHalfEncrypted = Encryption(atsCode2ndHalf).ToString();

            beaconRegion = new CLBeaconRegion(new NSUuid(DataAccess.LecturerGetBeaconKey()), (ushort)int.Parse(atsCode1stHalfEncrypted), (ushort)int.Parse(atsCode2ndHalfEncrypted), SharedData.beaconId);
           
            //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
            var power = BeaconPower();

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager.StartAdvertising(peripheralData);
		}

        // encryption of ATS code
        private int Encryption(string atscode) 
        {
            int numberATSCode = Convert.ToInt32(atscode);
            int newATSCodeEncrypted = (numberATSCode * 5 + 136) * 7;
            return newATSCodeEncrypted;
        }

        // adjustment of power based on type of module
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

                            /* purpose of this is to bring the values of lecturerModule.atscode and lecturerModule.type
                            to LecturerAttendanceController as if the user at LecturerAttendanceController page turn off
                            Bluetooth, transmission of BLE signals will be stopped. Therefore, if the user turn on Bluetooth
                            and retry, the phone will once again become a beacon transmitting the BLE signals with the correct
                            atscode and BeaconPower - transmission power is based on the type of module */
                            CommonClass.atscode = lecturerModule.atscode;
                            CommonClass.moduleType = lecturerModule.type;

                            if (CommonClass.checkBluetooth == true)
                            {
                                InitBeacon();
                            }

                            CheckBluetoothRechability(); // thread that checks bluetooth constantly
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
                        ShowNoNetworkController();
                    });
                }
            }
		}

        private void ShowNoNetworkController() {
            okAlertNetworkController = UIAlertController.Create("SP WiFi not enabled", "Please turn on SP WiFi", UIAlertControllerStyle.Alert);

            okAlertNetworkController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));

            PresentViewController(okAlertNetworkController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            InvokeOnMainThread(() => {
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

                    if (network == "SPStaff")
                    {
                        return true;
                    }
                    else
                    {
                        ShowNoNetworkController();
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        // constant check for Bluetooth
        private void CheckBluetoothRechability()
        {
            Thread checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.beaconTransmitBluetoothThreadCheck == true)
            {
                bool isBluetooth = await Task.Run(() => this.BluetoothRechableOrNot()); // check is to see if Bluetooth is enabled

                if (!isBluetooth)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            /* when the user navigates back to this page, instead of setting the module name, time period
                            location and attendance code already shown, it will "refresh" to showing the defaults
                            i.e. when the user first navigates to this page, after retrieving the module information
                            the texts of the respective labels will be changed accordingly i.e. ModuleNameLabel.Text is BA,
                            When the user navigates to another page and goes back to this page, the ModuleNameLabel.Text will
                            still show 'BA', which should not show 'BA' since it should be 'refreshed'. */
                            ModuleNameLabel.Text = "Module Name";
                            TimePeriodLabel.Text = "Time Period";
                            LocationLabel.Text = "Location";
                            AttendanceCodeLabel.Text = "Attendance Code";

                            if (LecturerAttendanceCodeTextField.Hidden == false || LecturerOverrideButton.Hidden == false)
                            {
                                LecturerAttendanceCodeTextField.Hidden = true;
                                LecturerOverrideButton.Hidden = true;
                            }

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