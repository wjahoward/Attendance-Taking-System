using Android.App;
using Android.Widget;
using Android.OS;
using AltBeaconOrg.Bluetooth;
using AltBeaconOrg.BoundBeacon;
using Android.Bluetooth;
using Android.Bluetooth.LE;
using System.Runtime.Remoting.Contexts;
using Android.Content;
using Java.Util;
using Java.Lang;

namespace BeaconTestAndroid
{
    [Activity(Label = "BeaconTestAndroid", MainLauncher = true)]
    public class MainActivity : Activity
    {
        private BeaconManager _beaconManager;
        public AdvertiseCallback advertiseCallback;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            var beacon1 = new AltBeacon.Builder().SetId1("DF7E1C79-43E9-44FF-886F-1D1F7DA6997A")
                .SetId2("1").SetId3("1").SetRssi(-55).SetTxPower(-55).Build();

            _beaconManager = BeaconManager.GetInstanceForApplication(this);

            BTransmitter bTransmitter = new BTransmitter();
            bTransmitter.Transmit();

            /*BluetoothManager bluetoothManager = (BluetoothManager)Application.Context.GetSystemService(Context.BLUETOOTH_SERVICE);
            BluetoothAdapter bluetoothAdapter = bluetoothManager.getAdapter();
            BluetoothLeAdvertiser bluetoothAdvertiser = bluetoothAdapter.getBluetoothLeAdvertiser();

            AdvertisementData.Builder dataBuilder = new AdvertisementData.Builder();
            dataBuilder.setManufacturerData((int)0, advertisingBytes);

            AdvertiseSettings.Builder settingsBuilder = new AdvertiseSettings.Builder();
            settingsBuilder.SetAdvertiseMode(AdvertiseSettings.ADVERTISE_MODE_BALANCED);
            settingsBuilder.SetTxPowerLevel(AdvertiseSettings.ADVERTISE_TX_POWER_HIGH);
            settingsBuilder.setType(AdvertiseSettings.ADVERTISE_TYPE_NON_CONNECTABLE);

            bluetoothAdvertiser.StartAdvertising(settingsBuilder.build(), dataBuilder.build(), new AdvertiseCallback() {

            @Override

            public void onAdvertiseStart(int result)
                {
                    if (result == BluetoothAdapter.ADVERTISE_CALLBACK_SUCCESS)
                    {
                        Log.d(TAG, "started advertising successfully.");
                    }
                    else
                    {
                        Log.d(TAG, "did not start advertising successfully");
                    }

                }

            @Override
            public void onAdvertiseStop(int result)
                {
                    if (result == BluetoothAdapter.ADVERTISE_CALLBACK_SUCCESS)
                    {
                        Log.d(TAG, "stopped advertising successfully");
                    }
                    else
                    {
                        Log.d(TAG, "did not stop advertising successfully");
                    }

                }*/

        }

        /*void VerifyBluetooth()
        {
            try
            {
                if (!BeaconManager.GetInstanceForApplication(Application.Context).CheckAvailability())
                {
                    var builder = new AlertDialog.Builder(Application.Context);
                    builder.SetTitle("Bluetooth not enabled");
                    builder.SetMessage("Please enable bluetooth in settings and restart this application.");
                    EventHandler<DialogClickEventArgs> handler = null;
                    builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                    builder.SetOnDismissListener(onDismissListener: IDialogInterfaceOnDismissListener);
                    builder.Show();
                }
            }
            catch (BleNotAvailableException e)
            {
                Log.Debug("BleNotAvailableException", e.Message);

                var builder = new AlertDialog.Builder(Application.Context);
                builder.SetTitle("Bluetooth LE not available");
                builder.SetMessage("Sorry, this device does not support Bluetooth LE.");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                builder.SetOnDismissListener(Application.Context);
                builder.Show();
            }
        }*/

        
    }
}
