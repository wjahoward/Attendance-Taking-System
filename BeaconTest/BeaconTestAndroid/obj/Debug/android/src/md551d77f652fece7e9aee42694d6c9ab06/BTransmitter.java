package md551d77f652fece7e9aee42694d6c9ab06;


public class BTransmitter
	extends android.bluetooth.le.AdvertiseCallback
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("BeaconTestAndroid.BTransmitter, BeaconTestAndroid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", BTransmitter.class, __md_methods);
	}


	public BTransmitter ()
	{
		super ();
		if (getClass () == BTransmitter.class)
			mono.android.TypeManager.Activate ("BeaconTestAndroid.BTransmitter, BeaconTestAndroid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
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
