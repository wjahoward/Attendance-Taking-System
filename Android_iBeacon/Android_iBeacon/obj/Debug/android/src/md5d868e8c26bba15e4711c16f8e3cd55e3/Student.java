package md5d868e8c26bba15e4711c16f8e3cd55e3;


public class Student
	extends android.app.Activity
	implements
		mono.android.IGCUserPeer,
		android.content.DialogInterface.OnDismissListener,
		org.altbeacon.beacon.BeaconConsumer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"n_onResume:()V:GetOnResumeHandler\n" +
			"n_onPause:()V:GetOnPauseHandler\n" +
			"n_onDestroy:()V:GetOnDestroyHandler\n" +
			"n_onDismiss:(Landroid/content/DialogInterface;)V:GetOnDismiss_Landroid_content_DialogInterface_Handler:Android.Content.IDialogInterfaceOnDismissListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"n_getApplicationContext:()Landroid/content/Context;:GetGetApplicationContextHandler:AltBeaconOrg.BoundBeacon.IBeaconConsumerInvoker, AndroidAltBeaconLibrary\n" +
			"n_bindService:(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z:GetBindService_Landroid_content_Intent_Landroid_content_ServiceConnection_IHandler:AltBeaconOrg.BoundBeacon.IBeaconConsumerInvoker, AndroidAltBeaconLibrary\n" +
			"n_onBeaconServiceConnect:()V:GetOnBeaconServiceConnectHandler:AltBeaconOrg.BoundBeacon.IBeaconConsumerInvoker, AndroidAltBeaconLibrary\n" +
			"n_unbindService:(Landroid/content/ServiceConnection;)V:GetUnbindService_Landroid_content_ServiceConnection_Handler:AltBeaconOrg.BoundBeacon.IBeaconConsumerInvoker, AndroidAltBeaconLibrary\n" +
			"";
		mono.android.Runtime.register ("Android_iBeacon.Student, Android_iBeacon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Student.class, __md_methods);
	}


	public Student ()
	{
		super ();
		if (getClass () == Student.class)
			mono.android.TypeManager.Activate ("Android_iBeacon.Student, Android_iBeacon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);


	public void onResume ()
	{
		n_onResume ();
	}

	private native void n_onResume ();


	public void onPause ()
	{
		n_onPause ();
	}

	private native void n_onPause ();


	public void onDestroy ()
	{
		n_onDestroy ();
	}

	private native void n_onDestroy ();


	public void onDismiss (android.content.DialogInterface p0)
	{
		n_onDismiss (p0);
	}

	private native void n_onDismiss (android.content.DialogInterface p0);


	public android.content.Context getApplicationContext ()
	{
		return n_getApplicationContext ();
	}

	private native android.content.Context n_getApplicationContext ();


	public boolean bindService (android.content.Intent p0, android.content.ServiceConnection p1, int p2)
	{
		return n_bindService (p0, p1, p2);
	}

	private native boolean n_bindService (android.content.Intent p0, android.content.ServiceConnection p1, int p2);


	public void onBeaconServiceConnect ()
	{
		n_onBeaconServiceConnect ();
	}

	private native void n_onBeaconServiceConnect ();


	public void unbindService (android.content.ServiceConnection p0)
	{
		n_unbindService (p0);
	}

	private native void n_unbindService (android.content.ServiceConnection p0);

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
