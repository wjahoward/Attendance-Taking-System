using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "BTReady", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LectureBluetoothOn : Activity, IDialogInterfaceOnDismissListener
    {
        Button beginButton;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BTReady);

            beginButton = FindViewById<Button>(Resource.Id.button1);

            beginButton.Click += delegate
            {
                if (VerifyBle() == true)
                {
                    StartActivity(typeof(BeaconTransmitActivity));
                }
            };
        }

        private bool VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetTitle("Bluetooth not enabled");
                builder.SetMessage("Please enable bluetooth on your phone");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
                return false;
            }
            return true;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}