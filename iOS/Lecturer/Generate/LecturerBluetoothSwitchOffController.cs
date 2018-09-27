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

            RetryButton.Layer.CornerRadius = SharedData.buttonCornerRadius;

            RetryButton.TouchUpInside += (object sender, EventArgs e) => {
				
                if (CommonClass.checkBluetooth == true) // if Bluetooth is enabled
                {

                    // return back to the previous page upon pressing Retry button

                    this.NavigationController.PopViewController(true);
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
        }
    }
}