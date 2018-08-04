using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "LecturerTransmitBluetoothOff", ScreenOrientation = ScreenOrientation.Portrait)]
    public class LecturerTransmitBluetoothOff : Activity
    {
        Button retryBluetooth;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BluetoothOff);

            retryBluetooth = FindViewById<Button>(Resource.Id.retryBluetoothButton);

            retryBluetooth.Click += delegate
            {
                if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false) // if Bluetooth is enabled
                {
                    StartActivity(typeof(BeaconTransmitActivity));
                }
            };
        }

        public override void OnBackPressed()
        {
            return;
        }
    }
}