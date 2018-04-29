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

namespace BeaconTestAndroid
{
    public class BTransmitter : AdvertiseCallback
    {
        bool isSupported;
        IList<Long> dataFields = new List<Long>();

        public void Transmit()
        {
            BluetoothManager btManager = (BluetoothManager)Application.Context.GetSystemService(Context.BluetoothService);
            BluetoothAdapter btAdapter = btManager.Adapter;
            if (btAdapter.IsEnabled)
                isSupported = btAdapter.IsMultipleAdvertisementSupported;
            
            Beacon beacon = new Beacon.Builder()
               .SetId1("2f234454-cf6d-4a0f-adf2-f4911ba9ffa6")
               .SetId2("1")
               .SetId3("2")
            .SetManufacturer(0x0118) // Radius Networks.  Change this for other beacon layouts
            .SetTxPower(-59)
            .SetDataFields(new Long[] { (Long)0L }) // Remove this for beacon layouts without d: fields
            .Build();
            // Change the layout below for other beacon types
            BeaconParser beaconParser = new BeaconParser()
                    .SetBeaconLayout("m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25");
            BeaconTransmitter beaconTransmitter = new BeaconTransmitter(Application.Context, beaconParser);
            beaconTransmitter.StartAdvertising(beacon);
        }

    }
}