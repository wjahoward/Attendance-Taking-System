using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using AltBeaconOrg.BoundBeacon;
using Android;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Net.Wifi;
using Android.OS;
using Android.Runtime;
using Android.Support.V4.Widget;
using Android.Views;
using Android.Webkit;
using Android.Widget;
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

        AlertDialog.Builder builder;
        Thread checkBluetoothActiveThread;

        bool ableToTransmit;

        System.Timers.Timer aTimer = new System.Timers.Timer();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.LecturerAttendance);

            CommonClass.threadCheckWebView = true;

            //aTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
            //aTimer.Start();

            ThreadPool.QueueUserWorkItem(o => GetModule());

            swipe = FindViewById<SwipeRefreshLayout>(Resource.Id.swipe);

            webView = FindViewById<WebView>(Resource.Id.attendance);
            webView.Settings.JavaScriptEnabled = true;
            //webView.LoadUrl("https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login");

            if (CommonClass.url == null)
            {
                webView.LoadUrl("https://www.google.com");
            }
            else
            {
                webView.LoadUrl(CommonClass.url);
            }

            webView.SetWebViewClient(new HelloWebViewClient(swipe));

            swipe.Refresh += HandleRefresh;
        }

        //private void OnTimedEvent(object source, ElapsedEventArgs e)
        //{
        //    DateTime currentTime = DateTime.Now;
        //    currentTime += new TimeSpan(0, 0, 1);

        //    Console.WriteLine(currentTime);
        //    string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
        //    TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);

        //    if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
        //    {
        //        ableToTransmit = false;
        //        BeaconTransmit(BeaconPower(), lecturerModule.atscode, ableToTransmit);

        //        StopThreadingTemporarily();

        //        aTimer.Stop();

        //        builder = new AlertDialog.Builder(this);
        //        builder.SetTitle("Lesson timeout");
        //        builder.SetMessage("You have reached 15 minutes of the lesson, please proceed back to Timetable page!");
        //        builder.SetPositiveButton(Android.Resource.String.Ok, TimeIsUp);
        //        builder.SetCancelable(false);
        //        builder.SetOnDismissListener(this);
        //        RunOnUiThread(() => builder.Show());
        //    }
        //}

        //private void TimeIsUp(object sender, DialogClickEventArgs e)
        //{
        //    StopThreadingTemporarily();
        //    StartActivity(typeof(Timetable));
        //}

        // In case the person switches off Bluetooth and re-transmit the BLE signals
        private void GetModule()
        {
            try
            {
                LecturerTimetable lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                lecturerModule = lecturerTimetable.GetCurrentModule(CommonClass.moduleRowNumber);
                if (lecturerModule != null)
                {
                    if (CommonClass.transmittedOnce == false)
                    {
                        ableToTransmit = true;
                        BeaconTransmit(BeaconPower(), lecturerModule.atscode, ableToTransmit);
                    }

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

        private void BeaconTransmit(int power, string atscode, bool ableToTransmit)
        {
            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit(power, atscode, ableToTransmit);

            if (ableToTransmit == true)
            {
                CommonClass.transmittedOnce = true;
            }
            else
            {
                CommonClass.transmittedOnce = false;
            }
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
                //return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && (wifiManager.ConnectionInfo.SSID == "\"SPStudent\"" || wifiManager.ConnectionInfo.SSID == "\"SPStaff\"")); - check if connect to SP Network   
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID != "<unknown ssid>");
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

            // check whether need remove this
            //public override bool ShouldOverrideUrlLoading(WebView view, IWebResourceRequest request)
            //{
            //    view.LoadUrl(request.Url.ToString());
            //    return false;
            //}

            // check whether need remove this 
            //public override void OnPageStarted(WebView view, string url, Android.Graphics.Bitmap favicon)
            //{
            //    base.OnPageStarted(view, url, favicon);
            //}

            public override void OnPageFinished(WebView view, string url)
            {
                mSwipe.Refreshing = false;
                CommonClass.url = url;
                base.OnPageFinished(view, url);
            }
        }

        public override bool OnKeyDown(Keycode keyCode, KeyEvent e)
        {
            if (keyCode == Keycode.Back && webView.CanGoBack())
            {
                webView.GoBack();
                return true;
            }
            return base.OnKeyDown(keyCode, e);
        }

        public override void OnBackPressed()
        {
            StopThreadingTemporarily();
            aTimer.Stop();
            StartActivity(typeof(BeaconTransmitActivity));
        }

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckWebView = false;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}