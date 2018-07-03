using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth.LE;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Droid.Lecturer;
using BeaconTest.Models;

namespace BeaconTest.Droid
{
    [Activity(Label = "Lecturer")]
    public class Timetable : Activity, IDialogInterfaceOnDismissListener
    {
        public AdvertiseCallback advertiseCallback;
        ListView timeTableListView;
        StudentTimetable studentTimetable;

        int indexOfLesson = 0;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Timetable);

            base.OnCreate(savedInstanceState);

            ThreadPool.QueueUserWorkItem(o => VerifyBle());

            // Create your application here

            timeTableListView = FindViewById<ListView>(Resource.Id.timeTableListView);

            List<LecturerModuleTableViewItem> dataSource = new List<LecturerModuleTableViewItem>();

            studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
            foreach (StudentModule module in studentTimetable.modules)
            {
                if (!module.abbr.Equals(""))
                {
                    dataSource.Add(new LecturerModuleTableViewItem(module.abbr) { ModuleCode = module.code, Venue = module.location, Time = module.time, Id = indexOfLesson++ });
                }
                else
                {
                    dataSource.Add(new LecturerModuleTableViewItem("No lesson") { ModuleCode = "", Venue = "", Time = "" });
                }
            }

            var adapter = new CustomAdapter(this, dataSource);
            timeTableListView.Adapter = adapter;

            if (dataSource[0].ModuleName.Equals("No lesson"))
            {
                timeTableListView.Divider = null;
                timeTableListView.DividerHeight = 0;
                CommonClass.noLessons = true;

                timeTableListView.SetSelector(Android.Resource.Color.Transparent); // No highlight ripple effect if user clicks on listview
            }
            else
            {
                timeTableListView.ItemClick += (object sender, AdapterView.ItemClickEventArgs e) =>
                {
                    CommonClass.moduleRowNumber = dataSource[e.Position].Id;

                    string currentTimeString = DateTime.Now.ToShortTimeString();
                    TimeSpan currentTime = TimeSpan.Parse(currentTimeString);
                    //Console.WriteLine("Current time: {0}", currentTime);

                    string moduleStartTimeString = dataSource[e.Position].Time.Substring(0,5);
                    TimeSpan moduleStartTime = TimeSpan.Parse(moduleStartTimeString);
                    //Console.WriteLine("Module start time: {0}", moduleStartTime);

                    TimeSpan maxTime = moduleStartTime + TimeSpan.Parse("00:15:00");

                    if(currentTime >= moduleStartTime && currentTime <= maxTime)
                    {
                        if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false) // If Bluetooth is enabled
                        {
                            StartActivity(typeof(BeaconTransmitActivity));
                        }
                        else
                        {
                            StartActivity(typeof(LecturerBluetoothOff));
                        }
                    }
                    else
                    {
                        StartActivity(typeof(ErrorGenerating));
                    }
                };

            }
        }

        private bool VerifyBle()
        {
            if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability())
            {
                var builder = new AlertDialog.Builder(this);
                builder.SetTitle("Bluetooth not enabled");
                builder.SetMessage("Please enable bluetooth on your phone and restart the app");
                EventHandler<DialogClickEventArgs> handler = null;
                builder.SetPositiveButton(Android.Resource.String.Ok, handler);
                builder.SetOnDismissListener(this);
                RunOnUiThread(() => builder.Show());
                return false;
            }
            return true;
        }

        public void OnDismiss(IDialogInterface dialog)
        {
            dialog.Dismiss();
        }
    }
}