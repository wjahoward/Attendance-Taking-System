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
using BeaconTest.Droid.Lecturer;
using Java.Lang;

namespace BeaconTest.Droid
{
    class CustomAdapter : BaseAdapter
    {
        private Activity activity;
        private List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();

        public CustomAdapter(Activity activity, List<LecturerModuleTableViewItem> attendanceTableViewItems)
        {
            this.activity = activity;
            this.attendanceTableViewItems = attendanceTableViewItems;
        }

        public override int Count => attendanceTableViewItems.Count;

        public override Java.Lang.Object GetItem(int position)
        {
            return null;
        }

        public override long GetItemId(int position)
        {
            return attendanceTableViewItems[position].Id;
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            var view = convertView ?? activity.LayoutInflater.Inflate(Resource.Layout.list_view_data_template, parent, false);

            var module = view.FindViewById<TextView>(Resource.Id.module);
            var moduleCode = view.FindViewById<TextView>(Resource.Id.moduleCode);
            var moduleVenue = view.FindViewById<TextView>(Resource.Id.moduleVenue);
            var moduleTime = view.FindViewById<TextView>(Resource.Id.moduleTime);
            var generateATS = view.FindViewById<TextView>(Resource.Id.generateATS);

            module.Text = attendanceTableViewItems[position].ModuleName;
            moduleCode.Text = attendanceTableViewItems[position].ModuleCode;
            moduleVenue.Text = attendanceTableViewItems[position].Venue;
            moduleTime.Text = attendanceTableViewItems[position].Time;

            if (CommonClass.noLessons == true)
            {
                generateATS.Visibility = ViewStates.Gone;
               
            }

            return view;
        }
    }
}