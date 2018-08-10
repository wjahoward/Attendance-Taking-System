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
    class CustomAdapterLecturerListView : BaseAdapter
    {
        private Activity activity;
        private List<StudentAttendanceSubmissionTableViewItem> attendanceTableViewItems = new List<StudentAttendanceSubmissionTableViewItem>();

        public CustomAdapterLecturerListView(Activity activity, List<StudentAttendanceSubmissionTableViewItem> attendanceTableViewItems)
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
            var view = convertView ?? activity.LayoutInflater.Inflate(Resource.Layout.list_view_data_template_lecturer_listview, parent, false);

            var admissionId = view.FindViewById<TextView>(Resource.Id.admissionId);
            var dateSubmitted = view.FindViewById<TextView>(Resource.Id.dateSubmitted);

            admissionId.Text = attendanceTableViewItems[position].AdmissionId;
            dateSubmitted.Text = attendanceTableViewItems[position].DateSubmitted.ToString();

            if (CommonClass.noStudent == true)
            {
                admissionId.Visibility = ViewStates.Gone;
                dateSubmitted.Visibility = ViewStates.Gone;
            }

            return view;
        }
    }
}