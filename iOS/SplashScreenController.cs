using CoreBluetooth;
using Foundation;
using System;
using System.Timers;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class SplashScreenController : UIViewController
    {
        Timer aTimer = new System.Timers.Timer();

        int countDown = 2;

        public SplashScreenController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
            base.ViewDidLoad();

            aTimer.Enabled = true;
            aTimer.Interval = 1000;
            aTimer.Elapsed += Timer_Elapsed;
            aTimer.Start();

		}

        private void Timer_Elapsed(object sender, ElapsedEventArgs e)
        {
            
            Console.WriteLine(countDown);
            countDown--;
            if (countDown == 0) {
                aTimer.Stop();
                InvokeOnMainThread(() =>
                {
                    Console.WriteLine(countDown);
                    var viewController = this.Storyboard.InstantiateViewController("MainViewController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                });
            }
        }
	}
}