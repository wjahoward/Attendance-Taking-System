using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Student
{
    [Activity(Label = "EnterCode", ScreenOrientation = ScreenOrientation.Portrait)]
    public class StudentSuccessfulSubmission : Activity
    {
        Button logout;
        TextView lesson, time, venue, timeSubmitted;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Submit);

            logout = FindViewById<Button>(Resource.Id.submitBtn);

            logout.Click += delegate
            {
                StartActivity(typeof(MainActivity));
            };
        }
    }
}