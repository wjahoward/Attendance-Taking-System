using System;
using System.Collections.Generic;
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
<<<<<<< HEAD
=======
using BeaconTest.Models;
>>>>>>> 5047ecc2f7cb3099a570fc0bba55bf099c6c3dde

namespace BeaconTest.Droid
{
    [Activity(Label = "Lecturer")]
    public class Timetable : Activity, IDialogInterfaceOnDismissListener
    {
        public AdvertiseCallback advertiseCallback;
<<<<<<< HEAD
=======
        ListView timeTableListView;
        StudentTimetable studentTimetable;

        int indexOfLesson = 0;
>>>>>>> 5047ecc2f7cb3099a570fc0bba55bf099c6c3dde

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.Timetable);

            base.OnCreate(savedInstanceState);

            ThreadPool.QueueUserWorkItem(o => VerifyBle());

            // Create your application here

<<<<<<< HEAD
            Button genBtn1 = FindViewById<Button>(Resource.Id.genBtn1);

            genBtn1.Click += delegate
            {
                if(VerifyBle())
                {
                    StartActivity(typeof(BeaconTransmitActivity));
                }
            };
=======
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

                timeTableListView.SetSelector(Android.Resource.Color.Transparent);
            }
            else
            {
                timeTableListView.ItemClick += (object sender, AdapterView.ItemClickEventArgs e) =>
                {
                    if (VerifyBle())
                    {
                        CommonClass.moduleRowNumber = dataSource[e.Position].Id;
                        StartActivity(typeof(BeaconTransmitActivity));
                    }
                };

            }

            //Button genBtn1 = FindViewById<Button>(Resource.Id.genBtn1);

            //genBtn1.Click += delegate
            //{
            //    if(VerifyBle())
            //    {
            //        StartActivity(typeof(BeaconTransmitActivity));
            //    }
            //};
>>>>>>> 5047ecc2f7cb3099a570fc0bba55bf099c6c3dde
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