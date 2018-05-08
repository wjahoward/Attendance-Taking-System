using System;
using Foundation;
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

            LoginButton.Layer.CornerRadius = BeaconTest.Resources.buttonCornerRadius;

            LoginButton.TouchUpInside += (object sender, EventArgs e) => {
                username = UsernameTextField.Text;
                password = PasswordField.Text;

                if (username.Trim().Equals("student") && password.Trim().Equals("password"))
                {
                    var viewController = this.Storyboard.InstantiateViewController("StudentSubmitController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                }
                else if(username.Trim().Equals("lecturer") && password.Trim().Equals("password"))
                {
                    var viewController = this.Storyboard.InstantiateViewController("LecturerNavigationController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                }
                else{
                    //Create Alert
                    var okAlertController = UIAlertController.Create("Invalid Login Credentials", "The username or password you have entered is invalid", UIAlertControllerStyle.Alert);

                    //Add Action
                    okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                    // Present Alert
                    PresentViewController(okAlertController, true, null);
                }
            };
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}

