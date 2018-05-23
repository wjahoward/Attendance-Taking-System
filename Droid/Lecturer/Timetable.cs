using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth.LE;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Droid.Lecturer;

namespace BeaconTest.Droid
{
    [Activity(Label = "Lecturer")]
    public class Timetable : Activity, IDialogInterfaceOnDismissListener
    {
        private BeaconManager beaconManager;
        public AdvertiseCallback advertiseCallback;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Timetable);

            base.OnCreate(savedInstanceState);

            ThreadPool.QueueUserWorkItem(o => VerifyBle());

            // Create your application here

            Button genBtn1 = FindViewById<Button>(Resource.Id.genBtn1);

            genBtn1.Click += delegate
            {
                if(VerifyBle())
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
                builder.SetMessage("Please enable bluetooth on your phone and restart the app");
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