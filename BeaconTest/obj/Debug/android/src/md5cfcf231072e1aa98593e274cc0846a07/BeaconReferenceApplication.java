package md5cfcf231072e1aa98593e274cc0846a07;


public class BeaconReferenceApplication
	extends android.app.Application
	implements
		mono.android.IGCUserPeer,
		org.altbeacon.beacon.startup.BootstrapNotifier,
		org.altbeacon.beacon.MonitorNotifier
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:()V:GetOnCreateHandler\n" +
			"n_getApplicationContext:()Landroid/content/Context;:GetGetApplicationContextHandler:AltBeaconOrg.BoundBeacon.Startup.IBootstrapNotifierInvoker, AndroidAltBeaconLibrary\n" +
			"n_didDetermineStateForRegion:(ILorg/altbeacon/beacon/Region;)V:GetDidDetermineStateForRegion_ILorg_altbeacon_beacon_Region_Handler:AltBeaconOrg.BoundBeacon.IMonitorNotifierInvoker, AndroidAltBeaconLibrary\n" +
			"n_didEnterRegion:(Lorg/altbeacon/beacon/Region;)V:GetDidEnterRegion_Lorg_altbeacon_beacon_Region_Handler:AltBeaconOrg.BoundBeacon.IMonitorNotifierInvoker, AndroidAltBeaconLibrary\n" +
			"n_didExitRegion:(Lorg/altbeacon/beacon/Region;)V:GetDidExitRegion_Lorg_altbeacon_beacon_Region_Handler:AltBeaconOrg.BoundBeacon.IMonitorNotifierInvoker, AndroidAltBeaconLibrary\n" +
			"";
	}

	public BeaconReferenceApplication ()
	{
		mono.MonoPackageManager.setContext (this);
	}


	public void onCreate ()
	{
		n_onCreate ();
	}

	private native void n_onCreate ();


	public android.content.Context getApplicationContext ()
	{
		return n_getApplicationContext ();
	}

	private native android.content.Context n_getApplicationContext ();


	public void didDetermineStateForRegion (int p0, org.altbeacon.beacon.Region p1)
	{
		n_didDetermineStateForRegion (p0, p1);
	}

	private native void n_didDetermineStateForRegion (int p0, org.altbeacon.beacon.Region p1);


	public void didEnterRegion (org.altbeacon.beacon.Region p0)
	{
		n_didEnterRegion (p0);
	}

	private native void n_didEnterRegion (org.altbeacon.beacon.Region p0);


	public void didExitRegion (org.altbeacon.beacon.Region p0)
	{
		n_didExitRegion (p0);
	}

	private native void n_didExitRegion (org.altbeacon.beacon.Region p0);

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
