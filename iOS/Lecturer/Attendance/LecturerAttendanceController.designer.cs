// WARNING
//
// This file has been generated automatically by Visual Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace BeaconTest.iOS
{
    [Register ("LecturerAttendanceController")]
    partial class LecturerAttendanceController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITableView AttendanceTableView { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (AttendanceTableView != null) {
                AttendanceTableView.Dispose ();
                AttendanceTableView = null;
            }
        }
    }
}