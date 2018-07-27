using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceController : UIViewController
    {
		void ScrollView_Scrolled(object sender, EventArgs e)
		{
			AttendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl("www.google.com")));
		}      

		string loadURL = "https://ats.sf.sp.edu.sg/psc/cs90atstd/EMPLOYEE/HRMS/s/WEBLIB_A_ATS.ISCRIPT2.FieldFormula.IScript_GetLecturerClasses?&cmd=login";
		//string loadURL = "https://www.google.com";

        public LecturerAttendanceController (IntPtr handle) : base (handle)
        {
            
        }
        
		public override void ViewDidLoad()
		{
			AttendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl(loadURL)));
			//AttendanceWebView.ScrollView.Scrolled += ScrollView_Scrolled;
			AttendanceWebView.LoadFinished += delegate {
				AttendanceWebView.ScrollView.Delegate = new UIScrollViewDelegate(AttendanceWebView);
            };         
		}

		public class UIScrollViewDelegate : NSObject, IUIScrollViewDelegate, IUIWebViewDelegate
        {
			UIWebView attendanceWebView;

			public UIScrollViewDelegate(UIWebView webView){
				this.attendanceWebView = webView;
			}

            [Export("scrollViewDidEndDragging:willDecelerate:")]
			public void DraggingEnded(UIScrollView scrollView, bool willDecelerate)
			{
				Console.WriteLine("scroll ended");
				attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl("www.google.com")));
			}

            [Export("scrollViewDidEndDecelerating:")]
			public void DecelerationEnded(UIScrollView scrollView)
			{
				Console.WriteLine("scroll ended");
				attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl("https://www.google.com")));
			}

            [Export("scrollViewDidScroll:")]
            public void Scrolled(UIScrollView scrollView)
            {
                var translation = scrollView.PanGestureRecognizer.TranslationInView(scrollView.Superview);
				if (translation.Y > 0)
				{
					Console.WriteLine($"Scrolling {(translation.Y > 0 ? "Down" : "Up")}");
				}
				//attendanceWebView.LoadRequest(new NSUrlRequest(new NSUrl("www.google.com")));
            }

        }
    }
}