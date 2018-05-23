using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Views;
using Android.Widget;
using Android.Support.V4.App;
using Android.Support.V4.View;
using Android.Support.Design.Widget;
using System;
using Android.Net.Wifi;
using Acr.UserDialogs;
using System.Threading;
using System.Threading.Tasks;

namespace BeaconTest.Droid
{
    [Activity(Label = "@string/app_name", Icon = "@mipmap/icon",
        LaunchMode = LaunchMode.SingleInstance,
        ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation,
        ScreenOrientation = ScreenOrientation.Portrait)]
    public class MainActivity : BaseActivity
    {
        protected override int LayoutResource => Resource.Layout.Login;
        private const string unknownssid = "<unknown ssid>";

        string username;
        string pwd;

        bool valid;

        Button lecturerButton;
        Button studentButton;

        //ViewPager pager;
        //TabsAdapter adapter;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Button submitBtn = FindViewById<Button>(Resource.Id.MyButton);
            EditText Username = FindViewById<EditText>(Resource.Id.usernameInput);
            EditText Pwd = FindViewById<EditText>(Resource.Id.passwordInput);

            UserDialogs.Init(this);

            if (this.IsWifiConnected())
            {
                //submitBtn.Enabled = true;

                submitBtn.Click += delegate
                {
                    UserDialogs.Instance.ShowLoading("Logging in");

                    username = Username.Text;
                    pwd = Pwd.Text;
                    
                    ThreadPool.QueueUserWorkItem(o => Login());
                    
                };
            }
            else
            {
                AlertDialog.Builder alertDialog = new AlertDialog.Builder(this);
                alertDialog.SetTitle("Device not connected to wifi");
                alertDialog.SetMessage("Please enable wifi connection on your phone");
                alertDialog.SetPositiveButton("OK", delegate
                {
                    alertDialog.Dispose();
                });
                alertDialog.Show();

                //submitBtn.Enabled = false;
            }
        }

        //checks whether wifi is switched on and connected to a wifi network
        private bool IsWifiConnected()
        {
            var wifiManager = Application.Context.GetSystemService(Context.WifiService) as WifiManager;

            if (wifiManager != null)
            {
                return wifiManager.IsWifiEnabled &&
                    (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID != unknownssid);
            }
            return false;
        }

        private void Login()
        {
            valid = DataAccess.LoginAsync(username, pwd).Result;
            if (valid)
            {
                RunOnUiThread(() => UserDialogs.Instance.HideLoading());
                RunOnUiThread(() =>
                {
                    //username = s12345, password = Te@cher123
                    if (username.StartsWith("s", StringComparison.Ordinal))
                    {
                        StartActivity(typeof(Timetable));
                    }
                    //username = p1234567, password = R@ndom123
                    else if (username.StartsWith("p", StringComparison.Ordinal))
                    {
                        StartActivity(typeof(EnterCode));
                    }
                });
            }
            else
            {
                RunOnUiThread(() => UserDialogs.Instance.HideLoading());
                RunOnUiThread(() =>
                {
                    AlertDialog.Builder alertDialog = new AlertDialog.Builder(this);
                    alertDialog.SetTitle("Invalid login credentials");
                    alertDialog.SetMessage("The username or password you have entered is invalid");
                    alertDialog.SetNeutralButton("OK", delegate
                    {
                        alertDialog.Dispose();
                    });
                    alertDialog.Show();
                });
            }
        }

        /*class TabsAdapter : FragmentStatePagerAdapter
        {
            string[] titles;

            public override int Count => titles.Length;

            public TabsAdapter(Context context, Android.Support.V4.App.FragmentManager fm) : base(fm)
            {
                titles = context.Resources.GetTextArray(Resource.Array.sections);
            }

            public override Java.Lang.ICharSequence GetPageTitleFormatted(int position) =>
                                new Java.Lang.String(titles[position]);

            public override Android.Support.V4.App.Fragment GetItem(int position)
            {
                switch (position)
                {
                    case 0: return BrowseFragment.NewInstance();
                    case 1: return AboutFragment.NewInstance();
                }
                return null;
            }

            public override int GetItemPosition(Java.Lang.Object frag) => PositionNone;
        }*/
    }
}
