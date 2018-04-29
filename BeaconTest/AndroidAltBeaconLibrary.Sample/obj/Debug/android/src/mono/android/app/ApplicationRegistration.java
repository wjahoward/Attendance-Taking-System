package mono.android.app;

public class ApplicationRegistration {

	public static void registerApplications ()
	{
				// Application and Instrumentation ACWs must be registered first.
		mono.android.Runtime.register ("AndroidAltBeaconLibrary.Sample.BeaconReferenceApplication, AndroidAltBeaconLibrary.Sample, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", md50e1771c6377d1ebc5dbafdb63cc6e732.BeaconReferenceApplication.class, md50e1771c6377d1ebc5dbafdb63cc6e732.BeaconReferenceApplication.__md_methods);
		
	}
}
