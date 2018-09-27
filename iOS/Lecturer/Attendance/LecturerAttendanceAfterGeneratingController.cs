using Foundation;
using Plugin.Connectivity;
using System;
using System.Threading;
using System.Threading.Tasks;
using SystemConfiguration;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceAfterGeneratingController : UIViewController
    {
        /* this class is actually the same as LecturerAttendanceController.cs,
        just that there is no checking of Bluetooth since there is no transmission of BLE signals */

        string loadURL = "https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login";
        string currentURL;

        public LecturerAttendanceAfterGeneratingController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
            base.ViewDidLoad();

            CheckSPNetwork();
		}

        private void CheckSPNetworkReachability()
        {
            Thread checkSPNetworkActiveThread = new Thread(new ThreadStart(CheckSPNetworkAvailable));
            checkSPNetworkActiveThread.Start();
        }

        private async void CheckSPNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => this.CheckConnectToSPWiFi());

            if (!isNetwork)
            {
                this.InvokeOnMainThread(() =>
                {
                    try
                    {
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

        private void ShowNoNetworkController()
        {
            UIAlertController okAlertNetworkController = UIAlertController.Create("SP WiFi not enabled", "Please turn on SP WiFi", UIAlertControllerStyle.Alert);

            okAlertNetworkController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));

            PresentViewController(okAlertNetworkController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            CheckSPNetwork();
        }

        private void CheckSPNetwork()
        {
            if (CheckConnectToSPWiFi() == false)
            {
                ShowNoNetworkController();
            }
            else
            {
                CheckSPNetworkReachability();
                try
                {
                    if (currentURL != null)
                    {
                        LecturerAttendanceAfterGenerateWebView.LoadRequest(new NSUrlRequest(new NSUrl(currentURL)));
                    }

                    else {
                        LecturerAttendanceAfterGenerateWebView.LoadRequest(new NSUrlRequest(new NSUrl(loadURL)));
                    }

                    LecturerAttendanceAfterGenerateWebView.LoadFinished += delegate
                    {
                        if (currentURL != null)
                        {
                            currentURL = LecturerAttendanceAfterGenerateWebView.Request.Url.AbsoluteString; 
                        }
                        else
                        {
                            currentURL = loadURL;
                        }
                        LecturerAttendanceAfterGenerateWebView.ScrollView.Delegate = new UIScrollViewDelegate(LecturerAttendanceAfterGenerateWebView, currentURL);
                    };
                }
                catch (Exception ex)
                {
                    ShowNoNetworkController();
                }
            }
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

        }
    }
}