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
    [Register ("LecturerAttendanceAfterGeneratingController")]
    partial class LecturerAttendanceAfterGeneratingController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIWebView LecturerAttendanceAfterGenerateWebView { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (LecturerAttendanceAfterGenerateWebView != null) {
                LecturerAttendanceAfterGenerateWebView.Dispose ();
                LecturerAttendanceAfterGenerateWebView = null;
            }
        }
    }
}