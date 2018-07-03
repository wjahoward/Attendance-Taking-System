using CoreBluetooth;
using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerBluetoothSwitchOffController : UIViewController
    {
        public LecturerBluetoothSwitchOffController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            RetryButton.TouchUpInside += (object sender, EventArgs e) => {

                if (CommonClass.checkBluetooth == false) // rmb change to true on actual iphone device
                {
                    this.NavigationController.PopViewController(true);
                }

            };
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}