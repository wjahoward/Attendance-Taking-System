using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Widget;
using System;
using Android.Net.Wifi;
using Acr.UserDialogs;
using System.Threading;

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
        EditText Username;
        EditText Pwd;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Button submitBtn = FindViewById<Button>(Resource.Id.LoginButton);
            Username = FindViewById<EditText>(Resource.Id.usernameInput);
            Pwd = FindViewById<EditText>(Resource.Id.passwordInput);

            if (IsSPWifiConnected() == false)
            {
                ShowAlertDialog();
            }

            submitBtn.Click += LoginButtonOnClick;
        }

        //checks whether SP Wifi is switched on and is connected to SP WiFi network

        private bool IsSPWifiConnected()
        {
            var wifiManager = Application.Context.GetSystemService(Context.WifiService) as WifiManager;

            if (wifiManager != null)
            {
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && (wifiManager.ConnectionInfo.SSID == "\"SPStudent\"" || wifiManager.ConnectionInfo.SSID == "\"SPStaff\"")); // check if connect to SPWifi   
            }
            return false;
        }

        private void ShowAlertDialog()
        {
            AlertDialog.Builder alertDialog = new AlertDialog.Builder(this);
            alertDialog.SetTitle("Device not connected to SP Wifi");
            alertDialog.SetMessage("Please connect to SP Wifi on your phone");
            alertDialog.SetPositiveButton("OK", delegate
            {
                alertDialog.Dispose();
            });
            alertDialog.Show();
        }

        private void LoginButtonOnClick(object sender, EventArgs args)
        {
            if (IsSPWifiConnected())
            {
                username = Username.Text.TrimEnd(); // accept empty spaces at the end of the username
                pwd = Pwd.Text;

                // initialising the user dialog, and then showing a loading dialog box (spinner)

                UserDialogs.Init(this);
                UserDialogs.Instance.ShowLoading("Logging in...");

                /* A thread pool is a group of pre-instantiated, idle threads
                 which stands ready to be given work. These are preffered over instantiating new 
                 threads for each task when there is a lare number of short tasks to be done rather
                 than a small number of long ones. This prevents having to incur the overhead of creating 
                 a thread a large number of times. Basically, you can think a way of a bit of similarity of how a method works */

                ThreadPool.QueueUserWorkItem(o => Login());
            }
            else
            {
                ShowAlertDialog();
            }
        }

        private void Login()
        {
            // allows both lower and upper case of letter for username

            if ((username.Equals(("s12345"), StringComparison.OrdinalIgnoreCase) && pwd.Equals("Te@cher123")) || (username.Equals(("p1234567"), StringComparison.OrdinalIgnoreCase) && pwd.Equals("R@ndom123")))
            {
                if (username.StartsWith("s", StringComparison.OrdinalIgnoreCase)) 
                {
                    RunOnUiThread(() => StartActivity(typeof(Timetable)));
                    Finish();
                }

                else if (username.StartsWith("p", StringComparison.OrdinalIgnoreCase))
                {
                    SharedData.admissionId = username;
                    RunOnUiThread(() => StartActivity(typeof(EnterCode)));

                    //for resetting count when student logs out

                    CommonClass.count = 0;
                    Finish();
                }
            }
            else
            {
                RunOnUiThread(() =>
                {
                    AlertDialog.Builder alertDialog = new AlertDialog.Builder(this);
                    alertDialog.SetTitle("Invalid login credentials");
                    alertDialog.SetMessage("The username or password you have entered is invalid");
                    alertDialog.SetPositiveButton("OK", (object sender, DialogClickEventArgs e) =>
                    {
                        alertDialog.Dispose();
                    });
                    alertDialog.Show();
                    UserDialogs.Instance.HideLoading();
                });
            }
        }

        public override void OnBackPressed() // destroy the application upon pressing the hardware back button
        {
            Process.KillProcess(Process.MyPid());
        }
    }
}
