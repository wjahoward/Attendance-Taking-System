using Acr.UserDialogs;
using BeaconTest.Models;
using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using UIKit;
using CoreBluetooth;
using CoreFoundation;
using System.Threading.Tasks;
using Plugin.Connectivity;
using Plugin.BLE.Abstractions.Contracts;

namespace BeaconTest.iOS
{
    public partial class LecturerGenerateController : UITableViewController
    {
        UITableView tableView;
		List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
		LecturerTimetable lecturerTimetable;

        UIAlertController okAlertController;

        public LecturerGenerateController(IntPtr handle) : base(handle)
        {

        }

        public override async void ViewDidLoad()
        {
            base.ViewDidLoad();

            await CheckBluetooth();

            this.NavigationController.NavigationBar.BarTintColor = UIColor.FromRGB(BeaconTest.SharedData.primaryColourRGB[0], BeaconTest.SharedData.primaryColourRGB[1], BeaconTest.SharedData.primaryColourRGB[2]);
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
            this.NavigationController.NavigationBar.TitleTextAttributes = new UIStringAttributes()
            {
                ForegroundColor = UIColor.White
            };

            tableView = TimetableTableView; // defaults to Plain style
            tableView.RowHeight = 120;
            var frame = CGRect.Empty;
            frame.Height = 0;
            frame.Width = 0;
            tableView.TableFooterView = new UIView(frame);

            UserDialogs.Instance.ShowLoading("Retrieving timetable info...");
            ThreadPool.QueueUserWorkItem(o => GetTimetable());
        }

		public override void ViewDidAppear(bool animated)
		{
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = false;
		}

        private async Task CheckBluetooth() {
            var state = await GetBluetoothState(Plugin.BLE.CrossBluetoothLE.Current);
            if (state == BluetoothState.Off) {
                CommonClass.checkBluetooth = false;
            }
            else {
                CommonClass.checkBluetooth = true;
            }

            Plugin.BLE.CrossBluetoothLE.Current.StateChanged += (o, e) =>
            {
                if (e.NewState == BluetoothState.Off) {
                    CommonClass.checkBluetooth = false;
                }
                else {
                    CommonClass.checkBluetooth = true;
                }
            };
        }

        private Task<BluetoothState> GetBluetoothState(IBluetoothLE ble) {
            var tcs = new TaskCompletionSource<BluetoothState>();

            if (ble.State != BluetoothState.Unknown) {
                tcs.SetResult(ble.State);
            }

            else {
                EventHandler<Plugin.BLE.Abstractions.EventArgs.BluetoothStateChangedArgs> handler = null;
                handler += (o, e) =>
                {
                    Plugin.BLE.CrossBluetoothLE.Current.StateChanged -= handler;
                    tcs.SetResult(e.NewState);
                };
                Plugin.BLE.CrossBluetoothLE.Current.StateChanged += handler;
            }

            return tcs.Task;
        }

		private void GetTimetable()
        {
            if (CheckInternetStatus() == false)
            {
                InvokeOnMainThread(() =>
                {
                    ShowAlertDialog();
                });
            }
            else
            {
                try
                {
                    lecturerTimetable = DataAccess.GetLecturerTimetable().Result;
                    if (lecturerTimetable != null)
                    {
                        InvokeOnMainThread(() =>
                        {
                            UserDialogs.Instance.HideLoading();
                            SetTableData();
                        });
                    }
                }
                catch (Exception ex)
                {
                    InvokeOnMainThread(() =>
                    {
                        ShowAlertDialog();
                    });
                }
            }
        }

        private void ShowAlertDialog() {
            //Create Alert
            okAlertController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            //Add Action
            okAlertController.AddAction(UIAlertAction.Create("Settings", UIAlertActionStyle.Default, GoToWifiSettingsClick));
            okAlertController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));
            // Present Alert
            PresentViewController(okAlertController, true, null);
        }

		private void GoToWifiSettingsClick(UIAlertAction obj)
        {
            var url = new NSUrl("App-prefs:root=WIFI");
            UIApplication.SharedApplication.OpenUrl(url);
            PresentViewController(okAlertController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            InvokeOnMainThread(() => {
                GetTimetable();  
            });
        }

        public bool CheckInternetStatus()
        {
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            Debug.WriteLine(internetStatus); 

            var url = new NSUrl("App-prefs:root=WIFI");

            if (internetStatus.Equals(NetworkStatus.NotReachable))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        private void SetTableData()
		{
			foreach(LecturerModule module in lecturerTimetable.modules)
			{
				if(!module.abbr.Equals(""))
				{
					attendanceTableViewItems.Add(new LecturerModuleTableViewItem(module.abbr) { ModuleCode = module.code, Venue = module.location, Time = module.time });
				}
				else
				{
					attendanceTableViewItems.Add(new LecturerModuleTableViewItem("No lesson") { ModuleCode = "", Venue = "", Time = "" });
					tableView.AllowsSelection = false;
				}
			}
            var tableSource = new TableSource(attendanceTableViewItems, this.NavigationController);
            tableView.Source = tableSource;

            VerifyBle();

			tableView.ReloadData();
		}

        private void VerifyBle() {
            if (CommonClass.checkBluetooth == false)
            {
                okAlertController = UIAlertController.Create("Bluetooth not enabled", "Please enable Bluetooth on your phone to generate attendance code!", UIAlertControllerStyle.Alert);

                okAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                PresentViewController(okAlertController, true, null);
            }
        }

        public class TableSource : UITableViewSource
        {
            List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
            NSString cellIdentifier = new NSString("TableCell");
            UINavigationController navigationController;

            public TableSource(List<LecturerModuleTableViewItem> items, UINavigationController view)
            {
                attendanceTableViewItems = items;
                navigationController = view;
            }

            public override nint RowsInSection(UITableView tableview, nint section)
            {
                return attendanceTableViewItems.Count;
            }

            public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
            {
                var cell = tableView.DequeueReusableCell(cellIdentifier) as LecturerModuleCell;
				if (cell == null)
				{
					cell = new LecturerModuleCell(cellIdentifier);
					if (attendanceTableViewItems[0].ModuleName.Equals("No lesson"))
                    {
						cell.generateLabel.Hidden = true;
                    }
				}
				
                Debug.WriteLine(attendanceTableViewItems[0].ModuleName);
                if (indexPath.Row <= attendanceTableViewItems.Count - 1)
                {
                    cell.UpdateCell(attendanceTableViewItems[indexPath.Row].ModuleName
					                , attendanceTableViewItems[indexPath.Row].ModuleCode
					                , attendanceTableViewItems[indexPath.Row].Venue
					                , attendanceTableViewItems[indexPath.Row].Time);
                }
                return cell;
            }

            public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
            {
                //base.RowSelected(tableView, indexPath);
                //string currentTimeString = DateTime.Now.ToString("mm/dd/yyyy HH:mm:ss");
                //string currentTimeSubstring = currentTimeString.Substring(11, 8);
                string currentTimeString = "08:00";
                TimeSpan currentTime = TimeSpan.Parse(currentTimeString);
                //TimeSpan currentTime = TimeSpan.Parse(currentTimeSubstring);
                //Console.WriteLine("Current time: {0}", currentTimeSubstring);

                string moduleStartTimeString = attendanceTableViewItems[indexPath.Row].Time.Substring(0, 5);
                //string moduleStartTimeString = "12:10";
                TimeSpan moduleStartTime = TimeSpan.Parse(moduleStartTimeString);
                string moduleEndTimeString = attendanceTableViewItems[indexPath.Row].Time.Substring(6, 5);
                TimeSpan moduleEndTime = TimeSpan.Parse(moduleEndTimeString);

                TimeSpan maxTime = moduleStartTime + TimeSpan.Parse("00:15:00");

                CommonClass.maxTimeCheck = maxTime;

                /* the attendance view need fixing*/
                //var lecturerAttendanceController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerAttendanceController");
                //navigationController.PushViewController(lecturerAttendanceController, true);

                if (currentTime > moduleStartTime && (currentTime >= moduleEndTime || currentTime > maxTime))
                {
                    var lecturerAttendanceAfterGeneratingController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerAttendanceAfterGeneratingController");
                    navigationController.PushViewController(lecturerAttendanceAfterGeneratingController, true);
                }

                else if (currentTime >= moduleStartTime && currentTime <= maxTime)
                {
                    if (CommonClass.checkBluetooth == true) // If Bluetooth is enabled
                    {
                        var beaconTransmitController = UIStoryboard.FromName("Main", null).InstantiateViewController("BeaconTransmitController");
                        navigationController.PushViewController(beaconTransmitController, true);
                        CommonClass.moduleRowNumber = indexPath.Row;
                    }
                    else
                    {
                        var lecturerBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerBluetoothSwitchOffController");
                        navigationController.PushViewController(lecturerBluetoothSwitchOffController, true);
                    }
                }
                else
                {
                    var errorGeneratingAttendanceController = UIStoryboard.FromName("Main", null).InstantiateViewController("ErrorGeneratingAttendanceController");
                    navigationController.PushViewController(errorGeneratingAttendanceController, true);
                }
                //var beaconTransmitController = UIStoryboard.FromName("Main", null).InstantiateViewController("BeaconTransmitController");
                //navigationController.PushViewController(beaconTransmitController, true);
                //CommonClass.moduleRowNumber = indexPath.Row;
            }
		}
    }
}