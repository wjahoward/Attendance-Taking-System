using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class BeaconOutOfRangeController : UIViewController
    {
        partial void OutOfRangeRetry(UIButton sender)
        {
            if (SharedData.currentRetry <= SharedData.maxRetry)
            {
                var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");

                this.PresentViewController(viewController, true, null);
            }

            // this is to allow the user to manually submit ATS code if the user is still unable to detect after
            // retrying for 3 times
            else
            {
                ShowUnableToDetectDialog();
            }
        }

        private void ShowUnableToDetectDialog() 
        {
            UIAlertController unableToDetectController = UIAlertController.Create("Unable to detect phone", "Unable to detect lecturer's phone, would you like to enter ATS manually?", UIAlertControllerStyle.Alert);

            unableToDetectController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, EnterATSManually));

            PresentViewController(unableToDetectController, true, null);
        }

        private void EnterATSManually(UIAlertAction obj)
        {
            var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");

            this.PresentViewController(viewController, true, null);
        }

        public BeaconOutOfRangeController(IntPtr handle) : base(handle)
        {

        }
    }
}