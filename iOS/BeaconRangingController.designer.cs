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
        UIKit.UILabel FoundBeacon { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel ModuleNameLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton StudentSubmitButton { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel TimePeriodLabel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel VenueLabel { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (FoundBeacon != null) {
                FoundBeacon.Dispose ();
                FoundBeacon = null;
            }

            if (ModuleNameLabel != null) {
                ModuleNameLabel.Dispose ();
                ModuleNameLabel = null;
            }

            if (StudentSubmitButton != null) {
                StudentSubmitButton.Dispose ();
                StudentSubmitButton = null;
            }

            if (TimePeriodLabel != null) {
                TimePeriodLabel.Dispose ();
                TimePeriodLabel = null;
            }

            if (VenueLabel != null) {
                VenueLabel.Dispose ();
                VenueLabel = null;
            }
        }
    }
}