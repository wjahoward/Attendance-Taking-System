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

namespace BeaconTest.Droid.Student
{
    [Activity(Label = "NotWithinRange")]
    public class NotWithinRange : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.NotWithinRange);

            base.OnCreate(savedInstanceState);

            // Create your application here
        }
    }
}