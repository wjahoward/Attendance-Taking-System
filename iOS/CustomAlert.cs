using System;
using Foundation;
using UIKit;

namespace BeaconTest.iOS
{
    public static class CustomAlert
    {      
		public static UIAlertController CreateUIAlertController(string message, string submessage, string action1)
		{
			//Create Alert
			var okAlertController = UIAlertController.Create(message, submessage, UIAlertControllerStyle.Alert);

			okAlertController.AddAction(UIAlertAction.Create(action1, UIAlertActionStyle.Default, null));

			return okAlertController;
		}

		public static UIAlertController CreateUIAlertController(string message, string submessage, string action1, string action1URL)
        {
            //Create Alert
            var okAlertController = UIAlertController.Create(message, submessage, UIAlertControllerStyle.Alert);

			okAlertController.AddAction(UIAlertAction.Create(action1, UIAlertActionStyle.Default, action => UIApplication.SharedApplication.OpenUrl(new NSUrl(action1URL))));

            return okAlertController;
        }
    }
}
