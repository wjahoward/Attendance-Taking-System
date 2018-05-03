package md59b63201be766be467e51e22bd0302580;


public class TabsAdapter
	extends android.support.v4.app.FragmentStatePagerAdapter
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getCount:()I:GetGetCountHandler\n" +
			"n_getPageTitle:(I)Ljava/lang/CharSequence;:GetGetPageTitle_IHandler\n" +
			"n_getItem:(I)Landroid/support/v4/app/Fragment;:GetGetItem_IHandler\n" +
			"n_getItemPosition:(Ljava/lang/Object;)I:GetGetItemPosition_Ljava_lang_Object_Handler\n" +
			"";
		mono.android.Runtime.register ("BeaconTest.Droid.TabsAdapter, BeaconTest.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", TabsAdapter.class, __md_methods);
	}


	public TabsAdapter (android.support.v4.app.FragmentManager p0)
	{
		super (p0);
		if (getClass () == TabsAdapter.class)
			mono.android.TypeManager.Activate ("BeaconTest.Droid.TabsAdapter, BeaconTest.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "Android.Support.V4.App.FragmentManager, Xamarin.Android.Support.Fragment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", this, new java.lang.Object[] { p0 });
	}


	public int getCount ()
	{
		return n_getCount ();
	}

	private native int n_getCount ();


	public java.lang.CharSequence getPageTitle (int p0)
	{
		return n_getPageTitle (p0);
	}

	private native java.lang.CharSequence n_getPageTitle (int p0);


	public android.support.v4.app.Fragment getItem (int p0)
	{
		return n_getItem (p0);
	}

	private native android.support.v4.app.Fragment n_getItem (int p0);


	public int getItemPosition (java.lang.Object p0)
	{
		return n_getItemPosition (p0);
	}

	private native int n_getItemPosition (java.lang.Object p0);

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
