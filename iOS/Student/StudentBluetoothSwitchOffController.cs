using CoreBluetooth;
using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class StudentBluetoothSwitchOffController : UIViewController
    {
        public StudentBluetoothSwitchOffController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            NavigationController.NavigationBarHidden = true;

            CommonClass.checkBluetoothRangingOnce = true;

            RetryButton.TouchUpInside += (object sender, EventArgs e) =>
            {

                if (CommonClass.checkBluetooth == true)
                {
                    var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                }

            };
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = true;
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}