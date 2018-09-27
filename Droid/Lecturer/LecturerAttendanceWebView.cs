using System;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Net.Wifi;
using Android.OS;
using Android.Support.V4.Widget;
using Android.Views;
using Android.Webkit;
using BeaconTest.Droid.Lecturer;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "LecturerAttendanceWebView", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerAttendanceWebView : Activity, IDialogInterfaceOnDismissListener
    {
        WebView webView;
        SwipeRefreshLayout swipe;

        LecturerModule lecturerModule;
        private const string unknownssid = "<unknown ssid>";

        AlertDialog.Builder builder;
        Thread checkBluetoothActiveThread;

        string loadURL = "https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login";

        System.Timers.Timer lecturerAttendanceTimer = new System.Timers.Timer();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.LecturerAttendance);

            CommonClass.threadCheckWebView = true;

            ThreadPool.QueueUserWorkItem(o => GetModule());

            swipe = FindViewById<SwipeRefreshLayout>(Resource.Id.swipe);

            webView = FindViewById<WebView>(Resource.Id.attendance);
            webView.Settings.JavaScriptEnabled = true;

            if (CommonClass.url == null)
            {
                webView.LoadUrl(loadURL); // loading of default URL
            }
            else
            {
                webView.LoadUrl(CommonClass.url); 
            }

            webView.SetWebViewClient(new HelloWebViewClient(swipe));

            swipe.Refresh += HandleRefresh; // when the user attempts to pull to refresh
        }

        void HandleRefresh(object sender, EventArgs e)
        {
            swipe.Refreshing = true;
            webView.LoadUrl(webView.Url);
            webView.SetWebViewClient(new HelloWebViewClient(swipe));
        }

        public class HelloWebViewClient : WebViewClient
        {
            public SwipeRefreshLayout mSwipe;

            public HelloWebViewClient(SwipeRefreshLayout mSwipe)
            {
                this.mSwipe = mSwipe;
            }

            public override void OnPageFinished(WebView view, string url)
            {
                mSwipe.Refreshing = false;

                // store the current URL the user is on

                /* generally the purpose of CommonClass.url is for example when the user is at the Webview, 
                 and navigating from page A to page B and to page C.
                 Assuming in a situation when suddenly Bluetooth is switched off,
                 it will result in the user in navigating to LecturerBluetoothOffWebView.cs page,
                 and upon pressing the Retry button when Bluetooth is enabled, 
                 if there is no CommonClass.url, 
                 the user will navigate back to page A and has to click buttons in order to get back to page C,
                 which is troublesome for the user. */

                CommonClass.url = url; 
                base.OnPageFinished(view, url);
            }
        }

        /* if the user goes to more than one web page and wants to go back to the previous web page in the web view 
        by pressing the hardware back button */

        public override bool OnKeyDown(Keycode keyCode, KeyEvent e) 
        {
            if (keyCode == Keycode.Back && webView.CanGoBack())
            {
                webView.GoBack();
                return true;
            }
            return base.OnKeyDown(keyCode, e);
        }

        // in case the user switches off Bluetooth and re-transmit the BLE signals

        private void GetModule()
        {
            try
            {
                LecturerTimetable lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                lecturerModule = lecturerTimetable.GetCurrentModule(SharedData.moduleRowNumber);
                if (lecturerModule != null)
                {
                    lecturerAttendanceTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
                    lecturerAttendanceTimer.Start();

                    BeaconTransmit(BeaconPower(), lecturerModule.atscode);

                    CheckBluetoothRechability();
                }
            }

            catch (Exception ex)
            {
                builder = new AlertDialog.Builder(this);
                builder.SetTitle("SP Wifi not enabled");
                builder.SetMessage("Please turn on SP Wifi!");
                builder.SetPositiveButton(Android.Resource.String.Ok, AlertRetryClick);
                builder.SetCancelable(false);
                builder.SetOnDismissListener(this);

                RunOnUiThread(() => builder.Show());
            }
        }

        private void BeaconTransmit(int power, string atscode)
        {
            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit(power, atscode);
        }

        private void AlertRetryClick(object sender, DialogClickEventArgs e)
        {
            CheckNetworkAvailable();
        }

        private async void CheckNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => NetworkRechableOrNot());

            if (!isNetwork)
            {
                RunOnUiThread(() =>
                {
                    try
                    {
                        builder.Show();
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

        private bool NetworkRechableOrNot()
        {
            var wifiManager = Application.Context.GetSystemService(WifiService) as WifiManager;

            if (wifiManager != null)
            {
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID == "\"SPStaff\"");
            }
            return false;
        }

        private int BeaconPower()
        {
            switch (lecturerModule.type)
            {
                case "LAB":
                    return -84;
                case "TUT":
                    return -84;
                case "LEC":
                    return -81;
            }
            return 0;
        }

        private void CheckBluetoothRechability()
        {
            checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.threadCheckWebView == true)
            {
                bool isBluetooth = await Task.Run(() => BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    RunOnUiThread(() =>
                    {
                        try
                        {
                            StartActivity(typeof(LecturerBluetoothOffWebView));
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
            else
            {

            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                return false;
            }
            return true;
        }

        public override void OnBackPressed()
        {
            StopThreadingTemporarily();
            lecturerAttendanceTimer.Stop();

            CommonClass.beaconTransmitter.StopAdvertising();

            StartActivity(typeof(BeaconTransmitActivity));
        }

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckWebView = false;
        }

        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            currentTime += new TimeSpan(0, 0, 1);

            string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
            TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);

            if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
            {
                StopThreadingTemporarily();

                CommonClass.bluetoothAdapter.Disable();

                lecturerAttendanceTimer.Stop();

                builder = new AlertDialog.Builder(this);
                builder.SetTitle("Lesson timeout");
                builder.SetMessage("You have reached 15 minutes of the lesson, please proceed back to Timetable page!");
                builder.SetPositiveButton(Android.Resource.String.Ok, TimeIsUp);
                builder.SetCancelable(false);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
            }
        }

        private void TimeIsUp(object sender, DialogClickEventArgs e)
        {
            CommonClass.url = null; // set to null value

            StopThreadingTemporarily();
            StartActivity(typeof(Timetable));
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}