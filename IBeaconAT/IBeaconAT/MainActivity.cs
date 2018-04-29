using Android.App;
using Android.Widget;
using Android.OS;
using AltBeaconOrg.BoundBeacon;
using Android.Bluetooth.LE;

namespace IBeaconAT
{
    [Activity(Label = "IBeaconAT", MainLauncher = true)]
    public class MainActivity : Activity
    {
        private BeaconManager beaconManager;
        public AdvertiseCallback advertiseCallback; 

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            //var beacon1 = new AltBeacon.Builder().SetId1("DF7E1C79-43E9-44FF-886F-1D1F7DA6997A")
            //    .SetId2("1").SetId3("1").SetRssi(-55).SetTxPower(-55).Build();

            beaconManager = BeaconManager.GetInstanceForApplication(this);

            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit();
        }
    }
}

