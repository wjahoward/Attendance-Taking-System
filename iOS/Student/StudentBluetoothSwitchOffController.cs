using CoreBluetooth;
using Foundation;
using System;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class StudentBluetoothSwitchOffController : UIViewController
    {
        public StudentBluetoothSwitchOffController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            RetryButton.TouchUpInside += (object sender, EventArgs e) => {

				var bluetoothManager = new CBCentralManager(new CbCentralDelegate(), CoreFoundation.DispatchQueue.DefaultGlobalQueue,
                                                       new CBCentralInitOptions { ShowPowerAlert = true });

                if (CommonClass.checkBluetooth == true)
                {
                    var viewController = this.Storyboard.InstantiateViewController("StudentNavigationController");

                    if (viewController != null)
                    {
                        this.PresentViewController(viewController, true, null);
                    }
                }

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