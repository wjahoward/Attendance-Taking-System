using Android.App;
using Android.Widget;
using Android.OS;

namespace Android_iBeacon
{
    [Activity(Label = "Android_iBeacon", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Main);

            Button lectBtn = FindViewById<Button>(Resource.Id.lectBtn);

            Button stuBtn = FindViewById<Button>(Resource.Id.stuBtn);

            lectBtn.Click +=  delegate {
                StartActivity(typeof(Lecturer));
            };

            stuBtn.Click += delegate
            {
                StartActivity(typeof(Student));
            };
        }
    }
}

