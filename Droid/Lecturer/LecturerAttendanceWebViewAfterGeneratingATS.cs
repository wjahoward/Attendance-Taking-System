using System;
using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Support.V4.Widget;
using Android.Views;
using Android.Webkit;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "LecturerAttendanceWebView", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerAttendanceWebViewAfterGeneratingATS : Activity
    {
        WebView webView;
        SwipeRefreshLayout swipe;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.LecturerAttendance);

            swipe = FindViewById<SwipeRefreshLayout>(Resource.Id.swipe);

            webView = FindViewById<WebView>(Resource.Id.attendance);
            webView.Settings.JavaScriptEnabled = true;

            if (CommonClass.url == null)
            {
                webView.LoadUrl("https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login");
            }
            else
            {
                webView.LoadUrl(CommonClass.url);
            }

            webView.SetWebViewClient(new HelloWebViewClient(swipe));

            swipe.Refresh += HandleRefresh;
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
            StartActivity(typeof(Timetable));
        }
    }
}