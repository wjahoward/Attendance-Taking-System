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

namespace BeaconTest.Droid.Lecturer
{
    public class StudentAttendanceSubmissionTableViewItem : Java.Lang.Object
    {
        public StudentAttendanceSubmissionTableViewItem()
        {
        }

        public StudentAttendanceSubmissionTableViewItem(string heading)
        {
            AdmissionId = heading;
        }

        public int Id { get; set; }

        public string AdmissionId { get; set; }

        public DateTime DateSubmitted { get; set; }

    }
}