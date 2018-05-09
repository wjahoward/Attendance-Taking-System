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
    [Register ("BeaconTransmitController")]
    partial class BeaconTransmitController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel AttendanceCodeLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ModuleNameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel StudentCountLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel TimePeriodLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel VenueLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton ViewAttendanceButton { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (AttendanceCodeLabel != null) {
                AttendanceCodeLabel.Dispose ();
                AttendanceCodeLabel = null;
            }

            if (ModuleNameLabel != null) {
                ModuleNameLabel.Dispose ();
                ModuleNameLabel = null;
            }

            if (StudentCountLabel != null) {
                StudentCountLabel.Dispose ();
                StudentCountLabel = null;
            }

            if (TimePeriodLabel != null) {
                TimePeriodLabel.Dispose ();
                TimePeriodLabel = null;
            }

            if (VenueLabel != null) {
                VenueLabel.Dispose ();
                VenueLabel = null;
            }

            if (ViewAttendanceButton != null) {
                ViewAttendanceButton.Dispose ();
                ViewAttendanceButton = null;
            }
        }
    }
}