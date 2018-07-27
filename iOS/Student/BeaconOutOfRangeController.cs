using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class BeaconOutOfRangeController : UIViewController
	{
		partial void OutOfRangeRetry(UIButton sender)
		{
			var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");
            
			this.PresentViewController(viewController, true, null);
		}

		public BeaconOutOfRangeController(IntPtr handle) : base(handle)
        {
			
        }


    }
}