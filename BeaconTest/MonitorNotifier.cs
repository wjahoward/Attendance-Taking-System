using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AltBeaconOrg.BoundBeacon;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace BeaconTest
{
    public class MonitorEventArgs : EventArgs
    {
        public Region Region { get; set; }

        /*purpose of state is to persist the region state to non-volatie storage, so that even the app 
         restarts, it will still remember which regions were in an "out of range state" and which were
         in an "in region state"*/
        public int State { get; set; }
    }

    public class MonitorNotifier : Java.Lang.Object, IMonitorNotifier
    {
        public event EventHandler<MonitorEventArgs> DetermineStateForRegionComplete;
        public event EventHandler<MonitorEventArgs> EnterRegionComplete;
        public event EventHandler<MonitorEventArgs> ExitRegionComplete;

        public void DidDetermineStateForRegion(int state, Region region)
        {
            OnDetermineStateForRegionComplete(state, region);
        }

        public void DidEnterRegion(Region region)
        {
            OnEnterRegionComplete(region);
        }

        public void DidExitRegion(Region region)
        {
            OnExitRegionComplete(region);
        }

        void OnDetermineStateForRegionComplete(int state, Region region)
        {
            if (DetermineStateForRegionComplete != null)
            {
                DetermineStateForRegionComplete(this, new MonitorEventArgs { State = state, Region = region });
            }
        }

        void OnEnterRegionComplete(Region region)
        {
            if (EnterRegionComplete != null)
            {
                //monitor the current region the device is in
                EnterRegionComplete(this, new MonitorEventArgs { Region = region });
            }
        }

        void OnExitRegionComplete(Region region)
        {
            if (ExitRegionComplete != null)
            {
                ExitRegionComplete(this, new MonitorEventArgs { Region = region });
            }
        }
    }
}