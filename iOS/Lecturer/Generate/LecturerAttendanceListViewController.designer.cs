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
    [Register ("LecturerAttendanceListViewController")]
    partial class LecturerAttendanceListViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITableView StudentAttendanceTableView { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (StudentAttendanceTableView != null) {
                StudentAttendanceTableView.Dispose ();
                StudentAttendanceTableView = null;
            }
        }
    }
}