using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;
using AltBeaconOrg.BoundBeacon.Powersave;
using AltBeaconOrg.BoundBeacon.Startup;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;

namespace BeaconTest
{
    //[Application(Label = "Beacon Receiver")]
    /*public class BeaconReferenceApplication : Application, IBootstrapNotifier
    {
        const string TAG = "AndroidProximityReferenceApplication";

        BeaconManager beaconManager;

        RegionBootstrap regionBootstrap;
        Region backgroundRegion;
        BackgroundPowerSaver backgroundPowerSaver;
        bool haveDetectedBeaconsSinceBoot = false;

        MainActivity mainActivity = null;
        public MainActivity MainActivity
        {
            get { return mainActivity; }
            set { mainActivity = value; }
        }

        public BeaconReferenceApplication() : base() { }
        public BeaconReferenceApplication(IntPtr javaReference, Android.Runtime.JniHandleOwnership transfer) : 
            base(javaReference, transfer) { }

        //private static Beacon beacon = new Beacon();

        public override void OnCreate()
        {
            base.OnCreate();

            beaconManager = BeaconManager.GetInstanceForApplication(this);

            var beaconParser = new BeaconParser();
            beaconParser.SetBeaconLayout("m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25");
            beaconManager.BeaconParsers.Add(beaconParser);

            Log.Debug(TAG, "setting up background monitoring for beacons and power saving");
            // wake up the app when a beacon is seen
            backgroundRegion = new Region("backgroundRegion", null, null, null);
            regionBootstrap = new RegionBootstrap(this, backgroundRegion);

            // simply constructing this class and holding a reference to it in your custom Application
            // class will automatically cause the BeaconLibrary to save battery whenever the application
            // is not visible.  This reduces bluetooth power usage by about 60%
            backgroundPowerSaver = new BackgroundPowerSaver(this);
        }

        //MONITORING - START
        public void DidDetermineStateForRegion(int state, Region region)
        {
            Log.Debug(TAG, "I have just switched from seeing/not seeing beacons: " + state);
        }

        public void DidEnterRegion(Region region)
        {
            // In this example, this class sends a notification to the user whenever a Beacon
            // matching a Region (defined above) are first seen.
            Log.Debug(TAG, "did enter region.");

            if (!haveDetectedBeaconsSinceBoot)
            {
                Log.Debug(TAG, "auto launching MonitoringActivity");

                // The very first time since boot that we detect an beacon, we launch the
                // MainActivity
                var intent = new Intent(this, typeof(MainActivity));
                intent.SetFlags(ActivityFlags.NewTask);
                // Important:  make sure to add android:launchMode="singleInstance" in the manifest
                // to keep multiple copies of this activity from getting created if the user has
                // already manually launched the app.
                this.StartActivity(intent);
                haveDetectedBeaconsSinceBoot = true;
            }
            else
            {
                if (mainActivity != null)
                {
                    Log.Debug(TAG, "I see a beacon again");
                }
                else
                {
                    // If we have already seen beacons before, but the monitoring activity is not in
                    // the foreground, we send a notification to the user on subsequent detections.
                    Log.Debug(TAG, "Sending notification.");
                    SendNotification();
                }
            }
        }

        public void DidExitRegion(Region region)
        {
            Log.Debug(TAG, "did exit region.");
        }
        //MONITORING - END

        void SendNotification()
        {
            //needs to wait for awhile before the notification pops out
            var builder =
                new Notification.Builder(this)
                    .SetContentTitle("AltBeacon Receiver")
                    .SetContentText("A beacon is nearby.")
                    .SetSmallIcon(Android.Resource.Drawable.IcDialogInfo);

            var stackBuilder = Android.App.TaskStackBuilder.Create(this);
            stackBuilder.AddNextIntent(new Intent(this, typeof(MainActivity)));
            var resultPendingIntent =
                stackBuilder.GetPendingIntent(
                    0,
                    PendingIntentFlags.UpdateCurrent
                );
            builder.SetContentIntent(resultPendingIntent);
            var notificationManager =
                (NotificationManager)this.GetSystemService(Context.NotificationService);
            notificationManager.Notify(1, builder.Build());
        }
    }*/
}