using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid
{
    public class BluetoothConstantCheck
    {
        Activity activity;
        Thread checkBluetoothActiveThread;
        bool isDialogShowing;
        AlertDialog.Builder builder;

        public BluetoothConstantCheck(Activity activity)
        {
            this.activity = activity;
            this.doAlertDialog();
            this.CheckBluetoothRechability();
        }

        private void CheckBluetoothRechability()
        {
            checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            bool isBluetooth = await Task.Run(() => this.BluetoothRechableOrNot());

            if (!isBluetooth)
            {
                activity.RunOnUiThread(() =>
                {
                    try
                    {
                        if (!isDialogShowing)
                        {
                            isDialogShowing = true;
                            builder.Show();
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("BluetoothReachability -> CheckBluetoothRechability:" + ex.Message);
                    }
                });
            }
            else
            {
                isDialogShowing = false;
                this.CheckBluetoothAvailable();
            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (!BeaconManager.GetInstanceForApplication(activity).CheckAvailability())
            {
                return false;
            }
            return true;
        }

        private void doAlertDialog()
        {
            if (builder != null)
                builder.Dispose();

            builder = new AlertDialog.Builder(activity);
            builder.SetTitle("Bluetooth not enabled");
            builder.SetMessage("Please turn on Bluetooth!");
            builder.SetCancelable(false);
            builder.SetPositiveButton("Retry", AlertRetryClick); // check if can change to SetPositiveButton
        }

        private void AlertRetryClick(object sender1, DialogClickEventArgs args)
        {
            isDialogShowing = false;
            this.CheckBluetoothAvailable();
        }
    }
}