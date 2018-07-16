using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Support.V4.Widget;
using Android.Views;
using Android.Webkit;
using Android.Widget;

namespace BeaconTest.Droid
{
    [Activity(Label = "WebSiteView", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerAttendanceWebView : Activity
    {
        WebView webView;
        SwipeRefreshLayout swipe;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.LecturerAttendance);

            swipe = FindViewById<SwipeRefreshLayout>(Resource.Id.swipe);
            CommonClass.test = swipe;

            swipe.Refresh += HandleRefresh;

            LoadWeb();
        }

        void HandleRefresh(object sender, EventArgs e)
        {
            swipe.Refreshing = true;
            LoadWeb();
        }

        private void LoadWeb()
        {
            webView = FindViewById<WebView>(Resource.Id.attendance);

            webView.Settings.JavaScriptEnabled = true;
            webView.LoadUrl("https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses");
            webView.SetWebViewClient(new HelloWebViewClient(this));
        }

        public class HelloWebViewClient : WebViewClient
        {
            public Activity mActivity;
            public HelloWebViewClient(Activity mActivity)
            {
                this.mActivity = mActivity;
            }

            SwipeRefreshLayout testingSwipe = CommonClass.test;

            public override bool ShouldOverrideUrlLoading(WebView view, IWebResourceRequest request)
            {
                view.LoadUrl(request.Url.ToString());
                return true;
            }

            public override void OnPageStarted(WebView view, string url, Android.Graphics.Bitmap favicon)
            {
                base.OnPageStarted(view, url, favicon);
            }

            public override void OnPageFinished(WebView view, string url)
            {
                testingSwipe.Refreshing = false;
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

    }

}