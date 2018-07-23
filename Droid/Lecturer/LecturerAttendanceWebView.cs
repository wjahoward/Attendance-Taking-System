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
using BeaconTest.Droid.Lecturer;

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

            BluetoothConstantCheck bluetoothCheck = new BluetoothConstantCheck(this);

            SetContentView(Resource.Layout.LecturerAttendance);

            swipe = FindViewById<SwipeRefreshLayout>(Resource.Id.swipe);

            webView = FindViewById<WebView>(Resource.Id.attendance);
            webView.Settings.JavaScriptEnabled = true;
            //webView.LoadUrl("https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login");
            webView.LoadUrl("https://www.google.com");

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

            //public override bool ShouldOverrideUrlLoading(WebView view, IWebResourceRequest request)
            //{
            //    view.LoadUrl(request.Url.ToString());
            //    return true;
            //}

            public override void OnPageStarted(WebView view, string url, Android.Graphics.Bitmap favicon)
            {
                base.OnPageStarted(view, url, favicon);
            }

            public override void OnPageFinished(WebView view, string url)
            {
                mSwipe.Refreshing = false;
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
            var i = new Intent(this, typeof(BeaconTransmitActivity)).SetFlags(ActivityFlags.ReorderToFront);
            StartActivity(i);
        }

    }

}