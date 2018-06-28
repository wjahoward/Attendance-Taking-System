using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Acr.UserDialogs;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Bluetooth.LE;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using BeaconTest.Droid.Lecturer;
using BeaconTest.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace BeaconTest.Droid
{
    [Activity(Label = "Lecturer", ScreenOrientation = ScreenOrientation.Portrait)]
    public class Timetable : Activity, IDialogInterfaceOnDismissListener
    {
        public AdvertiseCallback advertiseCallback;
        ListView timeTableListView;
        StudentTimetable studentTimetable;
        List<LecturerModuleTableViewItem> dataSource = new List<LecturerModuleTableViewItem>();

        int indexOfLesson = 0;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Timetable);

            base.OnCreate(savedInstanceState);

            UserDialogs.Init(this);

            UserDialogs.Instance.ShowLoading("Retrieving module info...");

            ThreadPool.QueueUserWorkItem(o => GetTimetable());

            //ThreadPool.QueueUserWorkItem(o => VerifyBle());
        }

        private void GetTimetable()
        {
            studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
            string testingSerialize = JsonConvert.SerializeObject(studentTimetable);
            var testing = JsonConvert.DeserializeObject<dynamic>(testingSerialize);
            if (studentTimetable != null)
            {
                RunOnUiThread(() =>
                {
                    VerifyBle();
                    UserDialogs.Instance.HideLoading();
                    SetTableData();
                });
            }
            /*if (((JObject)testing).Count != 0)
            {
                RunOnUiThread(() =>
                {
                    VerifyBle();
                    UserDialogs.Instance.HideLoading();
                    SetTableData();
                });
            }*/
           
        }

        private void SetTableData()
        {
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
            DisplayTimetableListView();
        }

        private void DisplayTimetableListView()
        {
            timeTableListView = FindViewById<ListView>(Resource.Id.timeTableListView);
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
                    if (!BeaconManager.GetInstanceForApplication(this).CheckAvailability() == false) // If Bluetooth is enabled
                    {
                        StartActivity(typeof(BeaconTransmitActivity));
                    }
                    else
                    {
                        StartActivity(typeof(LecturerBluetoothOff));
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