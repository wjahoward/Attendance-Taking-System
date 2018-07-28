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

        public void Transmit(int power, string atscode, bool transmit)
        {
            //get the bluetooth service of the application and let Bluetooth manager manage the service
            BluetoothManager bm = (BluetoothManager)Application.Context.
                GetSystemService(Context.BluetoothService);

            //get the adapter of the bluetooth service and let bt reference it
            BluetoothAdapter bt = bm.Adapter;

            //if bluetooth is enabled
            //if (bt.IsEnabled)
            //{
            //    isSupported = bt.IsMultipleAdvertisementSupported;
            //}

            //string atsCode = atscode;
            //string atsCode1stHalf = atsCode.Substring(0, 3);
            //string atsCode2ndHalf = atsCode.Substring(3, 3);

            //Beacon b = new Beacon.Builder()
            //    .SetId1(DataAccess.LecturerGetBeaconKey())
            //    .SetId2(atsCode1stHalf)
            //    .SetId3(atsCode2ndHalf)
            //    .SetManufacturer(0x4C)
            //    .SetTxPower(power)
            //    .Build();

            //BeaconParser bp = new BeaconParser()
            //    .SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");

            //AltBeaconOrg.BoundBeacon.BeaconTransmitter beaconTransmitter = new AltBeaconOrg.BoundBeacon.BeaconTransmitter(Application.Context, bp);

            //beaconTransmitter.StartAdvertising(b);

            if (transmit == true)
            {

                if (bt.IsEnabled)
                {
                    isSupported = bt.IsMultipleAdvertisementSupported;
                }

                string atsCode = atscode;
                string atsCode1stHalf = atsCode.Substring(0, 3);
                string atsCode2ndHalf = atsCode.Substring(3, 3);

                //string atsCode1stHalfEncrypted = Encryption(atsCode1stHalf);
                //string atsCode2ndHalfEncrypted = Encryption(atsCode2ndHalf);

                //string atsCode1stHalfDecrypted = Decryption(atsCode1stHalfEncrypted);
                //string atsCode2ndHalfDecrypted = Decryption(atsCode2ndHalfEncrypted);

                Beacon b = new Beacon.Builder()
                    .SetId1(DataAccess.LecturerGetBeaconKey())
                    .SetId2(atsCode1stHalf)
                    .SetId3(atsCode2ndHalf)
                    .SetManufacturer(0x4C)
                    .SetTxPower(power)
                    .Build();

                BeaconParser bp = new BeaconParser()
                    .SetBeaconLayout("m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24");

                AltBeaconOrg.BoundBeacon.BeaconTransmitter beaconTransmitter = new AltBeaconOrg.BoundBeacon.BeaconTransmitter(Application.Context, bp);

                beaconTransmitter.StartAdvertising(b);
            }

            else
            {
                bt.Disable();
            }

        }

        //private string Encryption(string atscode)
        //{
        //    // Encryption
        //    // string input = "foo";
        //    byte xorConstantEncryption = 0x53;
        //    byte[] dataEncryption = Encoding.UTF8.GetBytes(atscode);
        //    for (int i = 0; i < dataEncryption.Length; i++)
        //    {
        //        dataEncryption[i] = (byte)(dataEncryption[i] ^ xorConstantEncryption);
        //    }
        //    string outputEncryption = Convert.ToBase64String(dataEncryption);
        //    return outputEncryption;
        //}

        //private string Decryption(string atsCodeEncrypted)
        //{
        //    // Decryption
        //    byte xorConstantDecryption = 0x53;
        //    byte[] dataDecryption = Convert.FromBase64String(atsCodeEncrypted);
        //    for (int i = 0; i < dataDecryption.Length; i++)
        //    {
        //        dataDecryption[i] = (byte)(dataDecryption[i] ^ xorConstantDecryption);
        //    }
        //    string plainTextDecryption = Encoding.UTF8.GetString(dataDecryption);
        //    return plainTextDecryption;
        //}
    }
}
