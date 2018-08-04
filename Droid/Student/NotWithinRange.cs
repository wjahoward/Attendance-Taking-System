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
    [Activity(Label = "NotWithinRange", LaunchMode = LaunchMode.SingleTask, ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class NotWithinRange : Activity
    {
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
        }

        async void RetryButtonOnClick(object sender, EventArgs e)
        {
            await Task.Run(() =>
            {
                CommonClass.count++;

                //students can only retry aka range for the lecturer's phone 3 times
                if (CommonClass.count <= 3)
                {
                    RunOnUiThread(() =>
                    {
                        StartActivity(typeof(EnterCode));
                    });
                    Finish();
                }
                //if after 3 times still cannot detect lecuter's phone, contigency plan will activate
                else
                {
                    RunOnUiThread(() =>
                    {
                        AlertDialog.Builder ad = new AlertDialog.Builder(this);
                        ad.SetTitle("Unable to detect phone");
                        ad.SetMessage("Unable to detect lecturer's phone, would you like to enter ATS manually?");
                        ad.SetPositiveButton("OK", delegate
                        {
                            ad.Dispose();
                            Finish();
                            StartActivity(typeof(EnterCode));
                        });
                        ad.Show();
                    });
                }
                //Console.WriteLine("Retry button was clicked: " + count);
            });
        }

        //prevents user from going back to the previous page
        public override void OnBackPressed()
        {
            return;
        }
    }
}