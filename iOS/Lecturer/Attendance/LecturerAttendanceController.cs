using CoreBluetooth;
using CoreFoundation;
using CoreLocation;
using Foundation;
using Plugin.Connectivity;
using System;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using SystemConfiguration;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;
        CLBeaconRegion beaconRegion;

        UIAlertController okAlertLessonTimeOutController;

        /* purpose of the timer is to check once the current time reaches 15 minutes of the start time of the lesson
        it will prompt and inform that the user the current time has already reached 15 minutes so as to prevent
        the continuation transmission of BLE signals and disallow the students to be able to range for the phone */
		
        System.Timers.Timer lecturerAttendanceTimer = new System.Timers.Timer();

        string loadURL = "https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login";
        string currentURL;

        public LecturerAttendanceController(IntPtr handle) : base(handle)
        {
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager = new CBPeripheralManager(peripheralDelegate, DispatchQueue.DefaultGlobalQueue);
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = false;

            // can comment out the below 2 lines to start the timer
            // lecturerAttendanceTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            // lecturerAttendanceTimer.Start();

            CommonClass.lecturerAttendanceBluetoothThreadCheck = true;

            /* the reason why for network there is a thread only for WebView and not BeaconTransmitController,
            is because for BeaconTransmitController, there will be checking of network only when retrieving 
            one lecturer's module from the lecturer's timetable data, which is 'one-time off'. However, for
            Webview, whenever the user navigates to another page or (pull to refresh) refresh the current page,
            for our mobile application, we did not code in a way that it will show that it is a web page that 
            states "You are not connected to Wifi". So, therefore, for our case we have to create a thread
            to ensure Wifi is connected at all times when at the WebView; otherwise, if let say when is not connected
            to SPWifi - SPStaff, the user clicks this button or refresh, it will result in showing a blank page
            which shouldn't be the case */

            CommonClass.lecturerAttendanceNetworkThreadCheck = true;

            CheckSPNetwork();
        }

        // if navigate back to BeaconTransmitController page or other pages

		public override void ViewDidDisappear(bool animated)
		{
            base.ViewDidDisappear(animated);

            CommonClass.lecturerAttendanceBluetoothThreadCheck = false;
            CommonClass.lecturerAttendanceNetworkThreadCheck = false;

            peripheralManager.StopAdvertising();

            lecturerAttendanceTimer.Stop();
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

                lecturerAttendanceTimer.Stop();

                InvokeOnMainThread(() =>
                {
                    okAlertLessonTimeOutController = UIAlertController.Create("Lesson timeout", "You have reached 15 minutes of the lesson, please proceed back to Timetable page", UIAlertControllerStyle.Alert);

                    okAlertLessonTimeOutController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, TimeIsUp));

                    PresentViewController(okAlertLessonTimeOutController, true, null);
                });
            }
        }

        private void TimeIsUp(UIAlertAction obj)
        {
            var viewController = this.Storyboard.InstantiateViewController("LecturerNavigationController");

            if (viewController != null)
            {
                this.PresentViewController(viewController, true, null);
            }
        }

        private void ShowNoNetworkController()
        {
            //Create Alert
            UIAlertController okAlertNetworkController = UIAlertController.Create("SP WiFi not enabled", "Please turn on SP WiFi", UIAlertControllerStyle.Alert);

            //Add Action
            okAlertNetworkController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));

            // Present Alert
            PresentViewController(okAlertNetworkController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            CheckSPNetwork();
        }

        private void CheckSPNetwork()
        {
            CheckSPNetworkReachability();
            if (CheckConnectToSPWiFi() == false)
            {
                ShowNoNetworkController();
            }
            else
            {
                try {
                    CommonClass.lecturerAttendanceBluetoothThreadCheck = true; // start threading

                    InitBeacon();

                    /* inital check if "currentURL" variable has value, else it will load the "loadURL" variable,
                     which the loadURL is the default URL when the user first navigates and see (which is the ats.sf...)
                     web page only when "currentURL" variable has value, then it will load the "currentURL" variable
                     since it will change depending on the current URL the user is on */
					
                    if (currentURL != null)
                    {
                        AttendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(currentURL)));
                    }

                    else
                    {
                        AttendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(loadURL)));
                    }

                    AttendanceWebView.LoadFinished += delegate
                    {
                        if (currentURL != null)
                        {
                            // "currentURL" variable is based on the current web page of the web view the user is on

                            currentURL = AttendanceWebView.Request.Url.AbsoluteString;
                        }
                        else
                        {
                            /* "currentURL" variable will have the value of "loadURL" variable first 
                            since it will be null in the beginning */
							
                            currentURL = loadURL;
                        }
                        AttendanceWebView.ScrollView.Delegate = new UIScrollViewDelegate(AttendanceWebView, currentURL);
                    };

                    CheckBluetoothAvailable();
                }
                catch (Exception ex) {
                    ShowNoNetworkController();
                }
            }
        }

        public class UIScrollViewDelegate : NSObject, IUIScrollViewDelegate, IUIWebViewDelegate
        {
            UIWebView attendanceWebView;
            string currentURLWebview;

            public UIScrollViewDelegate(UIWebView webView, string currentURL)
            {
                this.attendanceWebView = webView;
                this.currentURLWebview = currentURL;
            }

            // allows the user to pull to refresh

            [Export("scrollViewDidEndDragging:willDecelerate:")]
            public void DraggingEnded(UIScrollView scrollView, bool willDecelerate)
            {
                attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(currentURLWebview)));
            }

            // the web view loads the current URL

            [Export("scrollViewDidEndDecelerating:")]
            public void DecelerationEnded(UIScrollView scrollView)
            {
                attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(currentURLWebview)));
            }
        }

        private void InitBeacon()
        {
            string atsCode = CommonClass.atscode;
            string atsCode1stHalf = atsCode.Substring(0, 3);
            string atsCode2ndHalf = atsCode.Substring(3, 3);

            string atsCode1stHalfEncrypted = Encryption(atsCode1stHalf).ToString();
            string atsCode2ndHalfEncrypted = Encryption(atsCode2ndHalf).ToString();

            beaconRegion = new CLBeaconRegion(new NSUuid(DataAccess.LecturerGetBeaconKey()), (ushort)int.Parse(atsCode1stHalfEncrypted), (ushort)int.Parse(atsCode2ndHalfEncrypted), SharedData.beaconId);

            //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
            
			var power = BeaconPower();

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager.StartAdvertising(peripheralData);
        }

        private int Encryption(string atscode)
        {
            int numberATSCode = Convert.ToInt32(atscode);
            int newATSCodeEncrypted = (numberATSCode * 5 + 136) * 7;
            return newATSCodeEncrypted;
        }

        public class BTPeripheralDelegate : CBPeripheralManagerDelegate
        {
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

        private NSNumber BeaconPower()
        {
            switch (CommonClass.moduleType)
            {
                case "LAB":
                    return new NSNumber(-84);
                case "TUT":
                    return new NSNumber(-84);
                case "LEC":
                    return new NSNumber(-81);
            }
            return null;
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

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.lecturerAttendanceBluetoothThreadCheck == true)
            {
                bool isBluetooth = await Task.Run(() => this.BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            CommonClass.lecturerAttendanceNetworkThreadCheck = false;
                            CommonClass.lecturerAttendanceBluetoothThreadCheck = false;
                            var lecturerBluetoothSwitchOffController = UIStoryboard.FromName("Main", null)
                            .InstantiateViewController("LecturerBluetoothSwitchOffController");
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

        // constant check for SP WiFi
        private void CheckSPNetworkReachability()
        {
            Thread checkSPNetworkActiveThread = new Thread(new ThreadStart(CheckSPNetworkAvailable));
            checkSPNetworkActiveThread.Start();
        }

        private async void CheckSPNetworkAvailable()
        {
            if (CommonClass.lecturerAttendanceNetworkThreadCheck == true)
            {
                bool isNetwork = await Task.Run(() => this.CheckConnectToSPWiFi());

                if (!isNetwork)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            CommonClass.lecturerAttendanceBluetoothThreadCheck = false;
                            ShowNoNetworkController();
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("NetworkReachability -> CheckSPNetworkReachability:" + ex.Message);
                        }
                    });
                }
                else
                {
                    CheckSPNetworkAvailable();
                }
            }
            else {
                
            }
        }
    }
}