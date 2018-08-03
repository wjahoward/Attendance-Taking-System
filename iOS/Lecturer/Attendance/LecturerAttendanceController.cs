using BeaconTest.Models;
using CoreBluetooth;
using CoreFoundation;
using CoreGraphics;
using CoreLocation;
using Foundation;
using Plugin.Connectivity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceController : UIViewController
    {
        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;
        CLBeaconRegion beaconRegion;

        UIAlertController okAlertController;

        System.Timers.Timer lecturerAttendanceTimer = new System.Timers.Timer();

        void ScrollView_Scrolled(object sender, EventArgs e)
        {
            AttendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl("www.google.com")));
        }

        //string loadURL = "https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login";
        string loadURL = "https://www.google.com";
        string currentURL;

        public LecturerAttendanceController(IntPtr handle) : base(handle)
        {
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager = new CBPeripheralManager(peripheralDelegate, DispatchQueue.DefaultGlobalQueue);
        }

        public override void ViewDidLoad()
        {
            //CheckNetworkReachability();
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = false;

            // uncomment the timer lines to make the session out works
            //lecturerAttendanceTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            //lecturerAttendanceTimer.Start();

            CommonClass.lecturerAttendanceBluetoothThreadCheck = true;
            CommonClass.lecturerAttendancenNetworkThreadCheck = true;

            CheckNetwork();
        }

		public override void ViewDidDisappear(bool animated)
		{
            base.ViewDidDisappear(animated);

            CommonClass.lecturerAttendanceBluetoothThreadCheck = false;
            CommonClass.lecturerAttendancenNetworkThreadCheck = false;

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
                    okAlertController = UIAlertController.Create("Lesson Timeout", "You have reached 15 minutes of the lesson, please proceed back to Timetable page!", UIAlertControllerStyle.Alert);

                    okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, TimeIsUp));

                    PresentViewController(okAlertController, true, null);
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

        private void ShowAlertDialog()
        {
            //Create Alert
            okAlertController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            //Add Action
            okAlertController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));
            okAlertController.AddAction(UIAlertAction.Create("Settings", UIAlertActionStyle.Default, GoToWifiSettingsClick));

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
            CheckNetwork();
        }

        private void CheckNetwork()
        {
            if (CheckInternetStatus() == false)
            {
                ShowAlertDialog();
            }
            else
            {
                CheckNetworkReachability();
                try {
                    InitBeacon();
                    CheckBluetoothAvailable();

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
                            currentURL = AttendanceWebView.Request.Url.AbsoluteString;
                        }
                        else
                        {
                            currentURL = loadURL;
                        }
                        AttendanceWebView.ScrollView.Delegate = new UIScrollViewDelegate(AttendanceWebView, currentURL);
                    };
                }
                catch (Exception ex) {
                    ShowAlertDialog();
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

            [Export("scrollViewDidEndDragging:willDecelerate:")]
            public void DraggingEnded(UIScrollView scrollView, bool willDecelerate)
            {
                attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(currentURLWebview)));
            }

            [Export("scrollViewDidEndDecelerating:")]
            public void DecelerationEnded(UIScrollView scrollView)
            {
                attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(currentURLWebview)));
            }

            [Export("scrollViewDidScroll:")]
            public void Scrolled(UIScrollView scrollView)
            {
                var translation = scrollView.PanGestureRecognizer.TranslationInView(scrollView.Superview);
                if (translation.Y > 0)
                {
                    Console.WriteLine($"Scrolling {(translation.Y > 0 ? "Down" : "Up")}");
                }
            }
        }

        private void InitBeacon()
        {
            string atsCode = CommonClass.atscode;
            string atsCode1stHalf = atsCode.Substring(0, 3);
            string atsCode2ndHalf = atsCode.Substring(3, 3);

            beaconRegion = new CLBeaconRegion(new NSUuid(DataAccess.StudentGetBeaconKey()), (ushort)int.Parse(atsCode1stHalf), (ushort)int.Parse(atsCode2ndHalf), SharedData.beaconId);

            //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
            var power = BeaconPower();

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager.StartAdvertising(peripheralData);
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
            if (CommonClass.lecturerAttendanceBluetoothThreadCheck == true)
            {
                bool isBluetooth = await Task.Run(() => this.BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            CommonClass.lecturerAttendancenNetworkThreadCheck = false;
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

        private void CheckNetworkReachability()
        {
            Thread checkNetworkActiveThread = new Thread(new ThreadStart(CheckNetworkAvailable));
            checkNetworkActiveThread.Start();
        }

        private async void CheckNetworkAvailable()
        {
            if (CommonClass.lecturerAttendancenNetworkThreadCheck == true)
            {
                bool isNetwork = await Task.Run(() => this.CheckInternetStatus());

                if (!isNetwork)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            Console.WriteLine("ShowAlertDialog - CheckNetworkAvailable");
                            ShowAlertDialog();
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("NetworkReachability -> CheckNetworkRechability:" + ex.Message);
                        }
                    });
                }
                else
                {
                    CheckNetworkAvailable();
                }
            }
            else {
                
            }
        }
    }
}