using Foundation;
using Plugin.Connectivity;
using System;
using System.Threading;
using System.Threading.Tasks;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceAfterGeneratingController : UIViewController
    {
        UIAlertController okAlertController;

        //string loadURL = "https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login";
        string loadURL = "https://www.google.com";
        string currentURL;

        void ScrollView_Scrolled(object sender, EventArgs e)
        {
            LecturerAttendanceAfterGenerateWebView.LoadRequest(new NSUrlRequest(new NSUrl("www.google.com")));
        }

        public LecturerAttendanceAfterGeneratingController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
            base.ViewDidLoad();

            CheckNetwork();
		}

        private void CheckNetworkReachability()
        {
            Thread checkNetworkActiveThread = new Thread(new ThreadStart(CheckNetworkAvailable));
            checkNetworkActiveThread.Start();
        }

        private async void CheckNetworkAvailable()
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
                    ShowAlertDialog();
                }
            }
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

    }
}