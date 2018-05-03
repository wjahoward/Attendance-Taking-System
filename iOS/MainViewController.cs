using System;

using UIKit;

namespace BeaconTest.iOS
{
    public partial class MainViewController : UIViewController
    {
        partial void TransmitButton_TouchUpInside(UIButton sender)
        {
            UIViewController transmitController = new BeaconViewController();

        }

        partial void MonitorButton_TouchUpInside(UIButton sender)
        {
            UIViewController rangeController = new BeaconRangingController();
        }

        public MainViewController() : base("MainViewController", null)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            // Perform any additional setup after loading the view, typically from a nib.
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}

