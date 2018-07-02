using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "ErrorGenerating")]
    public class ErrorGenerating : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your application here
            SetContentView(Resource.Layout.ErrorGenerating);

            Button backBtn = FindViewById<Button>(Resource.Id.button1);

            backBtn.Click += delegate
            {
                var i = new Intent(this, typeof(Timetable)).SetFlags(ActivityFlags.ReorderToFront);
                StartActivity(i);
            };
        }
    }
}