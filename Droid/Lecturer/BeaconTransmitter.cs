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

        /*const ushort beaconMajor = 2755;
        const ushort beaconMinor = 5;
        const string beaconId = "123";
        const string uuid = "C9407F30-F5F8-466E-AFF9-25556B57FE6D";*/

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
                .SetId1(Resources.testBeaconUUID)
                .SetId2(Resources.testBeaconMajor.ToString())
                .SetId3(Resources.testBeaconMinor.ToString())
                .SetManufacturer(0x4C)
                .SetTxPower(-59)
                .Build();

            BeaconParser bp = new BeaconParser()
                .SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");

            AltBeaconOrg.BoundBeacon.BeaconTransmitter beaconTransmitter = new AltBeaconOrg.BoundBeacon.BeaconTransmitter(Application.Context, bp);

            beaconTransmitter.StartAdvertising(b);
        }
    }
}