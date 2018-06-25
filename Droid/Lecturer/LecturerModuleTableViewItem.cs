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
    public class LecturerModuleTableViewItem : Java.Lang.Object
    {
        public LecturerModuleTableViewItem()
        {
        }

        public LecturerModuleTableViewItem(string heading)
        { ModuleName = heading; }

        public int Id { get; set; }

        public string ModuleName { get; set; }

        public string ModuleCode { get; set; }

        public string Time { get; set; }

        public string Venue { get; set; }
    }
}