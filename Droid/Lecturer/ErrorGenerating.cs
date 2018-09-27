using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Widget;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "ErrorGenerating", ScreenOrientation = ScreenOrientation.Portrait, NoHistory = true)]
    public class ErrorGenerating : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your application here
            SetContentView(Resource.Layout.ErrorGenerating);

            Button backBtn = FindViewById<Button>(Resource.Id.backButton);

            backBtn.Click += delegate
            {
                var i = new Intent(this, typeof(Timetable)).SetFlags(ActivityFlags.ReorderToFront);
                StartActivity(i);
            };
        }

        // when the user presses on the hardware back button

        public override void OnBackPressed()
        {
            var i = new Intent(this, typeof(Timetable)).SetFlags(ActivityFlags.ReorderToFront);
            StartActivity(i);
        }
    }
}