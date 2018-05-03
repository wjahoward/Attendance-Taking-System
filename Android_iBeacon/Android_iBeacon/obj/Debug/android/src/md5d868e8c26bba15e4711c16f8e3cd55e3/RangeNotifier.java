package md5d868e8c26bba15e4711c16f8e3cd55e3;


public class RangeNotifier
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		org.altbeacon.beacon.RangeNotifier
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_didRangeBeaconsInRegion:(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V:GetDidRangeBeaconsInRegion_Ljava_util_Collection_Lorg_altbeacon_beacon_Region_Handler:AltBeaconOrg.BoundBeacon.IRangeNotifierInvoker, AndroidAltBeaconLibrary\n" +
			"";
		mono.android.Runtime.register ("Android_iBeacon.RangeNotifier, Android_iBeacon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", RangeNotifier.class, __md_methods);
	}


	public RangeNotifier ()
	{
		super ();
		if (getClass () == RangeNotifier.class)
			mono.android.TypeManager.Activate ("Android_iBeacon.RangeNotifier, Android_iBeacon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void didRangeBeaconsInRegion (java.util.Collection p0, org.altbeacon.beacon.Region p1)
	{
		n_didRangeBeaconsInRegion (p0, p1);
	}

	private native void n_didRangeBeaconsInRegion (java.util.Collection p0, org.altbeacon.beacon.Region p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
