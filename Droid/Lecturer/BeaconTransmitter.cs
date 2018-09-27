using System;
using System.Collections.Generic;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth;
using Android.Bluetooth.LE;
using Android.Content;
using Java.Lang;

namespace BeaconTest.Droid
{
    public class BeaconTransmitter : AdvertiseCallback
    {
        bool isSupported;

        // IList is non-generic collection object that can be individually access by index

        IList<Long> dataFields = new List<Long>();

        public void Transmit(int power, string atscode)
        {
            // get the bluetooth service of the application and let Bluetooth manager manage the service

            BluetoothManager bm = (BluetoothManager)Application.Context.
                GetSystemService(Context.BluetoothService);

            // get the adapter of the bluetooth service and let bt reference it

            BluetoothAdapter bt = bm.Adapter;

            CommonClass.bluetoothAdapter = bt;

            if (bt.IsEnabled) // if Bluetooth is enabled
            {
                isSupported = bt.IsMultipleAdvertisementSupported;
            }

            string atsCode1stHalf = atscode.Substring(0, 3);
            string atsCode2ndHalf = atscode.Substring(3, 3);

            // encryption of ATS code

            string atscode1stHalfEncrypted = Encryption(atsCode1stHalf).ToString();
            string atscode2ndHalfEncrypted = Encryption(atsCode2ndHalf).ToString();

            // initialising the beacon

            Beacon b = new Beacon.Builder()
                .SetId1(DataAccess.LecturerGetBeaconKey())
                .SetId2(atscode1stHalfEncrypted)
                .SetId3(atscode2ndHalfEncrypted)
                .SetManufacturer(0x4C)
                .SetTxPower(power)
                .Build();

            // setBeaconLayout is the one that allows the phone to transmit as an iBeacon

            BeaconParser bp = new BeaconParser()
                .SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");

            AltBeaconOrg.BoundBeacon.BeaconTransmitter beaconTransmitter = new AltBeaconOrg.BoundBeacon.BeaconTransmitter(Application.Context, bp);

            /* the reason why we use CommonClass.beaconTransmitter is because we also want to stop the beaconTransmitter
             from advertising as stated from the reasons from the various classes.
             We tried to include in this method to stop advertising. 
             However, it does not seem to work. 
             Therefore, we have to use CommonClass.beaconTransmitter in order to stop advertising */

            CommonClass.beaconTransmitter = beaconTransmitter;

            beaconTransmitter.StartAdvertising(b);
        }

        // simple mathematical calculation to encrypt the ATS code - Major and Minor values

        private int Encryption(string atscode)
        {
            int numberATSCode = Convert.ToInt32(atscode);
            int newATSCodeEncrypted = (numberATSCode * 5 + 136) * 7;
            return newATSCodeEncrypted;
        }
    }
}
