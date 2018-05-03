package md5d868e8c26bba15e4711c16f8e3cd55e3;


public class BeaconTransmitter
	extends android.bluetooth.le.AdvertiseCallback
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Android_iBeacon.BeaconTransmitter, Android_iBeacon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", BeaconTransmitter.class, __md_methods);
	}


	public BeaconTransmitter ()
	{
		super ();
		if (getClass () == BeaconTransmitter.class)
			mono.android.TypeManager.Activate ("Android_iBeacon.BeaconTransmitter, Android_iBeacon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}

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
