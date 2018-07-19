using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class ErrorGeneratingAttendanceController : UIViewController
    {
        public ErrorGeneratingAttendanceController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

			textLabel.LineBreakMode = UILineBreakMode.WordWrap;
			textLabel.Lines = 0;

            BackButton.TouchUpInside += (object sender, EventArgs e) => {

                    this.NavigationController.PopViewController(true);
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