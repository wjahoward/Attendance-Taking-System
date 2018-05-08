using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth;
using Android.Bluetooth.LE;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Java.Lang;
using Java.Util;

namespace BeaconTest.Droid
{
    public class BeaconTransmitter : AdvertiseCallback
    {
        bool isSupported;

        //IList is non-generic collection object that can be individually access by index
        IList<Long> dataFields = new List<Long>();

        public void Transmit()
        {
            //get the bluetooth service of the application and let Bluetooth manager manage the service
            BluetoothManager bm = (BluetoothManager)Application.Context.
                GetSystemService(Context.BluetoothService);

            //get the adapter of the bluetooth service and let bt reference it
            BluetoothAdapter bt = bm.Adapter;

            //if bluetooth is enabled
            if (bt.IsEnabled)
            {
                isSupported = bt.IsMultipleAdvertisementSupported;
            }

            Beacon b = new Beacon.Builder()
                .SetId1("2f234454-cf6d-4a0f-adf2-f4911ba9ffa6")
                .SetId2("1")
                .SetId3("2")
                .SetManufacturer(0x004C)
                .SetTxPower(-59)
                .Build();

            BeaconParser bp = new BeaconParser()
                .SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");

            AltBeaconOrg.BoundBeacon.BeaconTransmitter beaconTransmitter = new AltBeaconOrg.BoundBeacon.BeaconTransmitter(Application.Context, bp);

            beaconTransmitter.StartAdvertising(b);
        }
    }
}