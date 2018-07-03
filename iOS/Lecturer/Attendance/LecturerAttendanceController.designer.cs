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

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UISegmentedControl SegmentedControl { get; set; }

        [Action ("SegmentedControl_ValChanged:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SegmentedControl_ValChanged (UIKit.UISegmentedControl sender);

        void ReleaseDesignerOutlets ()
        {
            if (AttendanceTableView != null) {
                AttendanceTableView.Dispose ();
                AttendanceTableView = null;
            }

            if (SegmentedControl != null) {
                SegmentedControl.Dispose ();
                SegmentedControl = null;
            }
        }
    }
}