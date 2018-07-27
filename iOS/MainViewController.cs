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

        public void Login()
		{
            username = "p1234567"; // rmb delete this later
            password = "R@ndom123"; // rmb delete this later
			InvokeOnMainThread(() =>
			{
				if ((username.Equals("s12345") && password.Equals("Te@cher123")) || (username.Equals("p1234567") && password.Equals("R@ndom123")))
                {
                    var bluetoothManager = new CBCentralManager(new CbCentralDelegate(), CoreFoundation.DispatchQueue.DefaultGlobalQueue,
                                                        new CBCentralInitOptions { ShowPowerAlert = true });
					UserDialogs.Instance.HideLoading();
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

			//LoginButton.Layer.CornerRadius = BeaconTest.SharedData.buttonCornerRadius;

			LoginButton.TouchUpInside += (object sender, EventArgs e) => {

				if(CheckInternetStatus())
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

			Debug.WriteLine(internetStatus);

			var url = new NSUrl("App-prefs:root=WIFI");

			if (internetStatus.Equals(NetworkStatus.NotReachable))
			{
				PresentViewController(CustomAlert.CreateUIAlertController(DataAccess.NoInternetConnection, "Internet connection is required for this app to function properly", "Go to settings", "App-prefs:root=WIFI"), true, null);

				return false;
			}
			else
			{
				return true;
			}
		}

        public class CbCentralDelegate : CBCentralManagerDelegate
        {
            public override void UpdatedState(CBCentralManager central)
            {
                if (central.State == CBCentralManagerState.PoweredOn)
                {
                    CommonClass.checkBluetooth = true;
                }
                else
                {
                    CommonClass.checkBluetooth = false;
                }
            }
        }
    }
}

