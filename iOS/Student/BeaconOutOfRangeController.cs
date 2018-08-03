using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class BeaconOutOfRangeController : UIViewController
    {
        UIAlertController unableToDetectController;

        partial void OutOfRangeRetry(UIButton sender)
        {
            if (SharedData.currentRetry <= SharedData.maxRetry)
            {
                var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");

                this.PresentViewController(viewController, true, null);
            }

            else
            {
                ShowUnableToDetectDialog();
            }
        }

        private void ShowUnableToDetectDialog() {
            // Create Alert
            unableToDetectController = UIAlertController.Create("Unable to detect phone", "Unable to detect lecturer's phone, would you like to enter ATS manually?", UIAlertControllerStyle.Alert);

            // Add Action
            unableToDetectController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, EnterATSManually));

            // Present Alert
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