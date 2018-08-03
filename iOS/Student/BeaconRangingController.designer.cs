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
    [Register ("BeaconRangingController")]
    partial class BeaconRangingController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField AttendanceCodeTextField { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton EnterAttendanceCodeButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel FoundBeacon { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView LectureAttendanceIcon { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel LocationLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ModuleCodeLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ModuleNameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ModuleTypeLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView StudentAttendanceIcon { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton StudentSubmitButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView TimeAttendanceIcon { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel TimePeriodLabel { get; set; }

        [Action ("AttendanceCodeTextFieldTextChanged:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void AttendanceCodeTextFieldTextChanged (UIKit.UITextField sender);

        void ReleaseDesignerOutlets ()
        {
            if (AttendanceCodeTextField != null) {
                AttendanceCodeTextField.Dispose ();
                AttendanceCodeTextField = null;
            }

            if (EnterAttendanceCodeButton != null) {
                EnterAttendanceCodeButton.Dispose ();
                EnterAttendanceCodeButton = null;
            }

            if (FoundBeacon != null) {
                FoundBeacon.Dispose ();
                FoundBeacon = null;
            }

            if (LectureAttendanceIcon != null) {
                LectureAttendanceIcon.Dispose ();
                LectureAttendanceIcon = null;
            }

            if (LocationLabel != null) {
                LocationLabel.Dispose ();
                LocationLabel = null;
            }

            if (ModuleCodeLabel != null) {
                ModuleCodeLabel.Dispose ();
                ModuleCodeLabel = null;
            }

            if (ModuleNameLabel != null) {
                ModuleNameLabel.Dispose ();
                ModuleNameLabel = null;
            }

            if (ModuleTypeLabel != null) {
                ModuleTypeLabel.Dispose ();
                ModuleTypeLabel = null;
            }

            if (StudentAttendanceIcon != null) {
                StudentAttendanceIcon.Dispose ();
                StudentAttendanceIcon = null;
            }

            if (StudentSubmitButton != null) {
                StudentSubmitButton.Dispose ();
                StudentSubmitButton = null;
            }

            if (TimeAttendanceIcon != null) {
                TimeAttendanceIcon.Dispose ();
                TimeAttendanceIcon = null;
            }

            if (TimePeriodLabel != null) {
                TimePeriodLabel.Dispose ();
                TimePeriodLabel = null;
            }
        }
    }
}