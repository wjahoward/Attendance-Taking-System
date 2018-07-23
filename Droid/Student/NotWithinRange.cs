using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Student
{
    [Activity(Label = "NotWithinRange", ScreenOrientation = ScreenOrientation.Portrait)]
    public class NotWithinRange : Activity
    {
        int count = 0;

        Button retryButton;

        public NotWithinRange()
        {
        }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.NotWithinRange);
            base.OnCreate(savedInstanceState);
            retryButton = FindViewById<Button>(Resource.Id.retryButton);
            retryButton.Click += RetryButtonOnClick;

            VerifyBle();
        }

        private void VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                StartActivity(typeof(StudentBluetoothOff));
            }
        }

        async void RetryButtonOnClick(object sender, EventArgs e)
        {
            await Task.Run(() =>
            {
                //count++;
                RunOnUiThread(() =>
                {
                    StartActivity(typeof(EnterCode));
                });
                //Console.WriteLine("Retry button was clicked: " + count);
            }); 
        }
    }
}