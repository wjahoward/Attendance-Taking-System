using System;
using System.Diagnostics;
using System.Threading;
using Acr.UserDialogs;
using CoreBluetooth;
using Foundation;
using Plugin.Connectivity;
using SystemConfiguration;
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

			LoginButton.Layer.CornerRadius = SharedData.buttonCornerRadius; // customised Login button to having curve edges

			LoginButton.TouchUpInside += (object sender, EventArgs e) => {

                if (CheckConnectToSPWiFi() == true) // check if connected to SP WiFi
				{
                    username = UsernameTextField.Text.TrimEnd();
                    password = PasswordField.Text;               

					UserDialogs.Instance.ShowLoading("Logging in...");
                    ThreadPool.QueueUserWorkItem(o => Login()); 
				}
            };
        }

		public override void ViewDidAppear(bool animated)
		{
			base.ViewDidAppear(animated);                  

            /* when the user starts to launch the application
            it will check if the user has already or not connected to SP WiFi */
            CheckConnectToSPWiFi(); 
		}

		public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
        
		public bool CheckConnectToSPWiFi()
		{
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            if (internetStatus.Equals(NetworkStatus.NotReachable)) // if there is no Internet
            {
                ShowNoNetworkController();
                return false;
            }
            else
            {
                /* the below codes are to check if the phone is connected to a specific SSID
                the reason why require try-catch is because if the phone is not connected to Internet
                while checking for that SSID, it will crash since is not connected to WiFi 
                and the "dict" value will be null, therefore having a try-catch expression is necessary */
                try
                {
                    NSDictionary dict;
                    var status = CaptiveNetwork.TryCopyCurrentNetworkInfo("en0", out dict);
                    var ssid = dict[CaptiveNetwork.NetworkInfoKeySSID];
                    string network = ssid.ToString();

                    if (network == "SINGTEL-7E15" || network == "SPStaff") // check to see if is connected to SP WiFi
                    {
                        return true;
                    }
                    else
                    {
                        ShowNoNetworkController();
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    ShowNoNetworkController();
                    return false;
                }
            }
		}

        private void ShowNoNetworkController() {
            UIAlertController okAlertNetworkController = UIAlertController.Create("Device not connected to SP WiFi", "Please connect to SP WiFi on your phone", UIAlertControllerStyle.Alert);

            okAlertNetworkController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

            PresentViewController(okAlertNetworkController, true, null);
        }

        public void Login()
        {
            InvokeOnMainThread(() =>
            {
                // accepts both capital and small letters for username text field
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
                        SharedData.admissionId = username;
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
                    UIAlertController invalidCredentialsController = UIAlertController.Create("Invalid login credentials", "The username or password you have entered is invalid", UIAlertControllerStyle.Alert);

                    //Add Action
                    invalidCredentialsController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                    // Present Alert
                    PresentViewController(invalidCredentialsController, true, null);
                }
            });
        }
    }
}