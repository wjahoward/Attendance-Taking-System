using System;
using System.Diagnostics;
using Foundation;
using Plugin.Connectivity;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class MainViewController : UIViewController
    {
        string username;
        string password;

        public MainViewController(IntPtr handle) : base (handle)
        {
        }

        public void Login()
		{
			username = UsernameTextField.Text;
            password = PasswordField.Text;

            bool valid = DataAccess.LoginAsync(username, password).Result;

            if (valid)
            {
                if (username.StartsWith("s", StringComparison.Ordinal))
                {
                    var viewController = this.Storyboard.InstantiateViewController("LecturerNavigationController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                }
                else
                {
                    var viewController = this.Storyboard.InstantiateViewController("StudentSubmitController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                }
            }
            else
            {
                //Create Alert
                var okAlertController = UIAlertController.Create("Invalid Login Credentials", "The username or password you have entered is invalid", UIAlertControllerStyle.Alert);

                //Add Action
                okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                // Present Alert
                PresentViewController(okAlertController, true, null);
            }
		}

        public override void ViewDidLoad()
        {
			base.ViewDidLoad();      

			LoginButton.Layer.CornerRadius = BeaconTest.Resources.buttonCornerRadius;

			LoginButton.TouchUpInside += (object sender, EventArgs e) => {

				if(CheckInternetStatus())
				{
					Login();
				}

            };
        }

		public override void ViewDidAppear(bool animated)
		{
			base.ViewDidAppear(animated);                  

			CheckInternetStatus();
		}

		public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
        
		public bool CheckInternetStatus()
		{
			NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

			Debug.WriteLine(internetStatus);

			var url = new NSUrl("App-prefs:root=WIFI");

			if (internetStatus.Equals(NetworkStatus.NotReachable))
			{
				//Create Alert
				var okAlertController = UIAlertController.Create(DataAccess.NoInternetConnection, "Internet connection is required for this app to function properly", UIAlertControllerStyle.Alert);

				okAlertController.AddAction(UIAlertAction.Create("Go to settings", UIAlertActionStyle.Default, action => UIApplication.SharedApplication.OpenUrl(url)));

				// Present Alert
				PresentViewController(okAlertController, true, null);

				return false;
			}
			else
			{
				return true;
			}
		}
    }
}

