using System;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Net.Wifi;
using Android.OS;
using Android.Text;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using BeaconTest.Models;

namespace BeaconTest.Droid.Lecturer
{
    [Activity(Label = "BeaconTransmitActivity", ScreenOrientation = ScreenOrientation.Portrait)]

    /* once navigates to this page or when the user navigates to other pages upon navigating to this page,
     checking whether Bluetooth is enabled is crucial since is transmitting BLE signals within the first 15 minutes of the start time of the lesson */

    public class BeaconTransmitActivity : Activity, IDialogInterfaceOnDismissListener
    {
        LecturerModule lecturerModule;
        private const string unknownssid = "<unknown ssid>";

        TextView moduleNameTextView, timeTextView, locationTextView, attendanceCodeTextView, overrideAttendanceCodeTextView;
        ImageView studentAttendanceImageView;
        Button lecturerViewAttendanceButton, overrideATSButton;
        EditText attendanceCodeEditText;

        AlertDialog.Builder builder;

        InputMethodManager manager;

        System.Timers.Timer beaconTransmitTimer = new System.Timers.Timer();

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.BeaconTransmitActivity);

            moduleNameTextView = FindViewById<TextView>(Resource.Id.moduleNameTextView);
            timeTextView = FindViewById<TextView>(Resource.Id.timeTextView);
            locationTextView = FindViewById<TextView>(Resource.Id.locationTextView);
            attendanceCodeTextView = FindViewById<TextView>(Resource.Id.attendanceCodeTextView);
            studentAttendanceImageView = FindViewById<ImageView>(Resource.Id.studentAttendanceImageView);
            lecturerViewAttendanceButton = FindViewById<Button>(Resource.Id.viewAttendanceButton);

            overrideATSButton = FindViewById<Button>(Resource.Id.overrideATSButton);
            overrideAttendanceCodeTextView = FindViewById<TextView>(Resource.Id.overrideAttendanceCodeTextView);
            attendanceCodeEditText = FindViewById<EditText>(Resource.Id.attendanceCodeEditText);

            overrideAttendanceCodeTextView.Click += OverrideATSTextViewClick;

            lecturerViewAttendanceButton.Click += LecturerViewAttendanceOnClick;

            attendanceCodeEditText.TextChanged += AttendanceCodeEditTextChanged;

            overrideATSButton.Click += OverrideATSButtonOnClick;

            manager = (InputMethodManager)GetSystemService(Context.InputMethodService);

            /* whenever the user first navigates to this page,
             by default the CommonClass.threadCheckBeaconTransmit will have a boolean value of true 
             so as to monitor whether is the Bluetooth is enabled or not continuously,
             until the user navigates to another page when the thread will be stopped */

            CommonClass.threadCheckBeaconTransmit = true;

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetModule());
        }

        private void GetModule()
        {
            try
            {
                LecturerTimetable lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                lecturerModule = lecturerTimetable.GetCurrentModule(SharedData.moduleRowNumber);
                if (lecturerModule != null)
                {
                    RunOnUiThread(() => moduleNameTextView.Text = lecturerModule.abbr + " (" + lecturerModule.code + ")");
                    RunOnUiThread(() => timeTextView.Text = lecturerModule.time);
                    RunOnUiThread(() => locationTextView.Text = lecturerModule.location);
                    RunOnUiThread(() => attendanceCodeTextView.Text = lecturerModule.atscode);
                    RunOnUiThread(() => UserDialogs.Instance.HideLoading());

                    BeaconTransmit(BeaconPower(), lecturerModule.atscode);

                    // comment out the below 2 lines to start the timer

                    // beaconTransmitTimer.Elapsed += new ElapsedEventHandler(OnTimedEvent);
                    // beaconTransmitTimer.Start();

                    CheckBluetoothRechability();
                }
                else
                {
                    RunOnUiThread(() => moduleNameTextView.Text = "No lessons today");
                    RunOnUiThread(() => timeTextView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => locationTextView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => attendanceCodeTextView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => studentAttendanceImageView.Visibility = ViewStates.Gone);
                    RunOnUiThread(() => UserDialogs.Instance.HideLoading());
                }
            }

            catch (Exception ex)
            {
                builder = new AlertDialog.Builder(this);
                builder.SetTitle("SP Wifi not enabled");
                builder.SetMessage("Please turn on SP Wifi!");
                builder.SetPositiveButton(Android.Resource.String.Ok, AlertRetryClick);
                builder.SetCancelable(false);
                builder.SetOnDismissListener(this);

                RunOnUiThread(() => builder.Show());
            }
        }

        private void AlertRetryClick(object sender, DialogClickEventArgs e)
        {
            CheckNetworkAvailable();
        }

        private async void CheckNetworkAvailable()
        {
            bool isNetwork = await Task.Run(() => NetworkRechableOrNot());

            if (!isNetwork)
            {
                RunOnUiThread(() =>
                {
                    try
                    {
                        builder.Show();
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("NetworkReachability -> CheckNetworkRechability:" + ex.Message);
                    }
                });
            }
            else
            {
                GetModule();
            }
        }

        private bool NetworkRechableOrNot()
        {
            var wifiManager = Application.Context.GetSystemService(Context.WifiService) as WifiManager;

            if (wifiManager != null)
            {
                return wifiManager.IsWifiEnabled && (wifiManager.ConnectionInfo.NetworkId != -1 && wifiManager.ConnectionInfo.SSID == "\"SPStaff\"");
            }
            return false;
        }

        private void CheckBluetoothRechability() // constant check for Bluetooth
        {
            Thread checkBluetoothActiveThread = new Thread(new ThreadStart(CheckBluetoothAvailable));
            checkBluetoothActiveThread.Start();
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.threadCheckBeaconTransmit == true)
            {
                bool isBluetooth = await Task.Run(() => BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    RunOnUiThread(() =>
                    {
                        try
                        {
                            StartActivity(typeof(LecturerTransmitBluetoothOff));
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("BluetoothReachability -> CheckBluetoothRechability:" + ex.Message);
                        }
                    });
                }
                else
                {
                    CheckBluetoothAvailable();
                }
            }
            else
            {

            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                return false;
            }
            return true;
        }

        private void BeaconTransmit(int power, string atscode) // start transmitting the beacon
        {
            BeaconTransmitter bTransmitter = new BeaconTransmitter();
            bTransmitter.Transmit(power, atscode);
        }

        private int BeaconPower() // adjustment of beacon power based on the type of module
        {
            switch (lecturerModule.type)
            {
                case "LAB":
                    return -84;
                case "TUT":
                    return -84;
                case "LEC":
                    return -81;
            }
            return 0;
        }

        private void OverrideATSTextViewClick(object sender, EventArgs e)
        {
            attendanceCodeEditText.Visibility = ViewStates.Visible;
            attendanceCodeEditText.RequestFocus();
            manager.ShowSoftInput(attendanceCodeEditText, ShowFlags.Implicit);
        }

        private void AttendanceCodeEditTextChanged(object sender, TextChangedEventArgs e)
        {
            // only if the length of the ATS code inputted by the user is of 6 digits then the override ATS button will be shown

            if (attendanceCodeEditText.Text.Length == 6)
            {
                overrideATSButton.Visibility = ViewStates.Visible;
            }
            else
            {
                overrideATSButton.Visibility = ViewStates.Invisible;
            }
        }

        async void OverrideATSButtonOnClick(object sender, EventArgs e)
        {
            var builderOverride = new AlertDialog.Builder(this);
            string message = "";
            try
            {
                lecturerModule.atscode = Convert.ToString(attendanceCodeEditText.Text);
                await DataAccess.LecturerOverrideATS(lecturerModule);

                attendanceCodeTextView.Text = lecturerModule.atscode;
                attendanceCodeEditText.Visibility = ViewStates.Gone;
                attendanceCodeEditText.SetText("", TextView.BufferType.Normal);

                manager.HideSoftInputFromWindow(attendanceCodeEditText.WindowToken, 0); // hides the keyboard
                message = "You have successfully override the ATS Code!";
                builderOverride.SetPositiveButton(Android.Resource.String.Ok, RefreshBeacon);
            }

            catch (Exception ex)
            {
                message = "Please turn on Wifi to override ATS Code!";
                builderOverride.SetPositiveButton(Android.Resource.String.Ok, (EventHandler<DialogClickEventArgs>)null);
            }

            builderOverride.SetMessage(message);
            builderOverride.SetOnDismissListener(this);
            RunOnUiThread(() => builderOverride.Show());
        }

        private void RefreshBeacon(object sender, DialogClickEventArgs e) // re-transmit BLE signals with new major and minor values
        {
            CommonClass.beaconTransmitter.StopAdvertising();
            BeaconTransmit(BeaconPower(), lecturerModule.atscode);
        }

        private void LecturerViewAttendanceOnClick(object sender, EventArgs e)
        {
            StopThreadingTemporarily();
            beaconTransmitTimer.Stop();

            // KIV this below code

            /* similarily to iOS side, 
             upon transmitting for the first time,
             when navigating to other pages,
             it will transmit as another iBeacon, which there will be two same iBeacons transmitting at the same time */

            CommonClass.beaconTransmitter.StopAdvertising();

            StartActivity(typeof(LecturerAttendanceWebView));
        }

        /* previously we tried to use thread.abort etc - basically methods to try and delete thread.
         However, none of the methods works successfully and thus we have to use CommonClass.threadCheckBeaconTransmit
         to have a boolean value of false in order to stop the threading */

        private void StopThreadingTemporarily()
        {
            CommonClass.threadCheckBeaconTransmit = false;
        }

        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            currentTime += new TimeSpan(0, 0, 1);
            Console.WriteLine(currentTime);

            string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
            TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);

            if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
            {
                StopThreadingTemporarily();

                CommonClass.bluetoothAdapter.Disable(); // automatically turn off Bluetooth - can only be done in Android, iOS not possible

                /* when the current lesson has reached 15 minutes of the start time of the lesson.
                i.e. the lesson starts from 8am to 10am, 
                once the time reaches 8.15am, it will show the AlertDialog that 'time is up' */

                beaconTransmitTimer.Stop();

                builder = new AlertDialog.Builder(this);
                builder.SetTitle("Lesson timeout");
                builder.SetMessage("You have reached 15 minutes of the lesson, please proceed back to Timetable page!");
                builder.SetPositiveButton(Android.Resource.String.Ok, TimeIsUp);
                builder.SetCancelable(false);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
            }
        }

        private void TimeIsUp(object sender, DialogClickEventArgs e)
        {
            StartActivity(typeof(Timetable));
        }

        /* prevents the user from navigating back to Timetable.cs page.
         Reason being is because if while transmission of BLE signals and the user navigates back to Timetable.cs page,
         need to take into consideration of checking if Bluetooth is disabled, need to have no Bluetooth off page,
         which this does not make sense since when the user first navigates to Timetable.cs page,
         there should not be having any thread running continuously to check the consistency of enabling Bluetooth 
         since there is no transmission of BLE signals yet */

        public override void OnBackPressed() 
        {
            return;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}