using System;
using System.Diagnostics;
using System.Threading.Tasks;
using CoreBluetooth;
using CoreFoundation;
using Foundation;

namespace BeaconTest.iOS
{
    public class EmptyClass : CBCentralManagerDelegate
    {
        CBCentralManager cBCentralManager;

        public EmptyClass()
        {
            cBCentralManager = new CBCentralManager(this, DispatchQueue.MainQueue);
        }

        public override void UpdatedState(CBCentralManager central)
        {
            switch(central.State){
                case CBCentralManagerState.Unknown:
                    Console.WriteLine("central.state is unknown");
                    break;
                case CBCentralManagerState.Unsupported:
                    Console.WriteLine("central.state is unsupported");
                    break;
                case CBCentralManagerState.PoweredOn:
                    //cBCentralManager.ScanForPeripherals(CBUUID.FromString("2f234454-cf6d-4a0f-adf2-f4911ba9ffa6"));
                    Console.WriteLine("central.state is powered on");
                    Scan(10000).Wait();
                    break;
                case CBCentralManagerState.PoweredOff:
                    Console.WriteLine("central.state is powered off");
                    break;
                case CBCentralManagerState.Resetting:
                    Console.WriteLine("central.state is resetting");
                    break;
                case CBCentralManagerState.Unauthorized:
                    Console.WriteLine("central.state is unauthorized");
                    break;
            }
        }
		public override void DiscoveredPeripheral(CBCentralManager central, CBPeripheral peripheral, NSDictionary advertisementData, NSNumber RSSI)
		{
            Console.WriteLine(peripheral.Identifier);
		}
        public async Task Scan(int scanDuration, string serviceUuid = "2f234454-cf6d-4a0f-adf2-f4911ba9ffa")
        {
            Debug.WriteLine("Scanning started");
            /*var uuids = string.IsNullOrEmpty(serviceUuid)
                ? new CBUUID[0]
                : new[] { CBUUID.FromString(serviceUuid) };*/
            this.cBCentralManager.ScanForPeripherals((CBUUID[])null);

            await Task.Delay(scanDuration);
            this.cBCentralManager.StopScan();
        }
	}
}
