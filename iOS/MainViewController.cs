using System;
using System.Diagnostics;
using System.Threading;
using Acr.UserDialogs;
using CoreBluetooth;
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

        public override void ViewDidLoad()
        {
			base.ViewDidLoad();      

			UsernameTextField.ShouldReturn = delegate
            {
                UsernameTextField.ResignFirstResponder();
                return true;
            };

            PasswordField.ShouldReturn = delegate
            {
                PasswordField.ResignFirstResponder();
                return true;
            };

			LoginButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;

			LoginButton.TouchUpInside += (object sender, EventArgs e) => {

				if(CheckInternetStatus() == true)
				{
					username = UsernameTextField.Text;
                    password = PasswordField.Text;               

					UserDialogs.Instance.ShowLoading("Logging in...");
                    ThreadPool.QueueUserWorkItem(o => Login()); 
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

			var url = new NSUrl("App-prefs:root=WIFI");

			if (internetStatus.Equals(NetworkStatus.NotReachable))
			{
				PresentViewController(CustomAlert.CreateUIAlertController("No Internet Connection", "Internet connection is required for this app to function properly", "Go to settings", "App-prefs:root=WIFI"), true, null);

				return false;
			}
			else
			{
				return true;
			}
		}

        public void Login()
        {
            //username = "p1234567";
            //password = "R@ndom123";
            //username = "S12345"; // rmb delete this later
            //password = "Te@cher123"; // rmb delete this later
            InvokeOnMainThread(() =>
            {
                // accepts both capital and small letters of username
                if ((username.Equals(("s12345"), StringComparison.OrdinalIgnoreCase) && password.Equals("Te@cher123")) || (username.Equals(("p1234567"), StringComparison.OrdinalIgnoreCase) && password.Equals("R@ndom123")))
                {
                    UserDialogs.Instance.HideLoading();
                    if (username.StartsWith("s", StringComparison.OrdinalIgnoreCase)) 
                    {
                        var viewController = this.Storyboard.InstantiateViewController("LecturerNavigationController");

                        if (viewController != null)
                        {
                            this.PresentViewController(viewController, true, null);
                        }
                    }
                    else if (username.StartsWith("p", StringComparison.OrdinalIgnoreCase))
                    {
                        var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");

                        if (viewController != null)
                        {
                            this.PresentViewController(viewController, true, null);
                        }
                    }
                }
                else
                {
                    UserDialogs.Instance.HideLoading();

                    //Create Alert
                    var okAlertController = UIAlertController.Create("Invalid Login Credentials", "The username or password you have entered is invalid", UIAlertControllerStyle.Alert);

                    //Add Action
                    okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                    // Present Alert
                    PresentViewController(okAlertController, true, null);
                }
            });
        }
    }
}

