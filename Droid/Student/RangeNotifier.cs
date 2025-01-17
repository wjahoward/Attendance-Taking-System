﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AltBeaconOrg.BoundBeacon;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

//contains methods for ranging a beacon
namespace BeaconTest.Droid
{
    public class RangeEventArgs : EventArgs
    {
        //a Region consists of a UUID, Major and Minor values
        public Region Region { get; set; }

        //a collection of beacons that was detected during ranging
        public ICollection<Beacon> Beacons { get; set; }
    }

    public class RangeNotifier : Java.Lang.Object, IRangeNotifier
    {
        public event EventHandler<RangeEventArgs> DidRangeBeaconsInRegionComplete;

        //async void DidRangeBeaconsInRegion(ICollection<Beacon> beacons, Region region)
        //{
        //    await Task.Run(() => OnDidRangeBeaconsInRegion(beacons, region));
        //}

        async void IRangeNotifier.DidRangeBeaconsInRegion(ICollection<Beacon> beacons, Region region)
        {
            await Task.Run(() => OnDidRangeBeaconsInRegion(beacons, region));
        }

        void OnDidRangeBeaconsInRegion(ICollection<Beacon> beacons, Region region)
        {
            if (DidRangeBeaconsInRegionComplete != null)
            {
                DidRangeBeaconsInRegionComplete(this, new RangeEventArgs { Beacons = beacons, Region = region });
            }
        }
    }
}