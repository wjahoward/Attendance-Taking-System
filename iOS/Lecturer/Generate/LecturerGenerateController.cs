using Acr.UserDialogs;
using BeaconTest.Models;
using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using System.Threading;
using UIKit;
using System.Threading.Tasks;
using Plugin.Connectivity;
using Plugin.BLE.Abstractions.Contracts;
using SystemConfiguration;

namespace BeaconTest.iOS
{
    public partial class LecturerGenerateController : UITableViewController
    {
        UITableView tableView;
        List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
        LecturerTimetable lecturerTimetable;

        public LecturerGenerateController(IntPtr handle) : base(handle)
        {

        }

        public override async void ViewDidLoad()
        {
            base.ViewDidLoad();

            await CheckBluetooth();

            // customise the Navigation Bar

            this.NavigationController.NavigationBar.BarTintColor = UIColor.FromRGB(BeaconTest.SharedData.primaryColourRGB[0], BeaconTest.SharedData.primaryColourRGB[1], BeaconTest.SharedData.primaryColourRGB[2]);
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
            this.NavigationController.NavigationBar.TitleTextAttributes = new UIStringAttributes()
            {
                ForegroundColor = UIColor.White
            };

            // creating and setting up UITableView object

            tableView = TimetableTableView; // defaults to Plain style
            tableView.RowHeight = 120;
            var frame = CGRect.Empty;
            frame.Height = 0;
            frame.Width = 0;
            tableView.TableFooterView = new UIView(frame);
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = false;

            UserDialogs.Instance.ShowLoading("Retrieving timetable info...");
            ThreadPool.QueueUserWorkItem(o => GetTimetable());
        }

        /* there are some strange things that occur in iOS and not in Android.
        For example, for Android, when you check for the first time,
        it will automatically check immediately if Bluetooth is enabled or not.
        However, for iOS, when you check for the first time, it will not check
        automatically if Blueooth is enabled or not, 
        but 'requires second time' then will check if Bluetooth is enabled or not */

        private async Task CheckBluetooth()
        {
            /* check for the first time when the user navigates to this controller page and 
             and check for the current state of the Bluetooth */

            /* once the user navigates to this controller page, it will continue to check the
             status of Bluetooth throughout, therefore we use CommonClass.checkBluetooth which this
             variable will be passed to other classes and easier to verify whether if Bluetooth is enabled
             or not, rather than if initialise one variable here and there to check if Bluetooth is enabled
             or not which this will be troublesome */

            var state = await GetBluetoothState(Plugin.BLE.CrossBluetoothLE.Current);
            if (state == BluetoothState.Off)
            {
                CommonClass.checkBluetooth = false;
            }
            else
            {
                CommonClass.checkBluetooth = true;
            }

            /* every time the user enables and disables Bluetooth 
            it will check the changed and updated state of Bluetooth */
			
            Plugin.BLE.CrossBluetoothLE.Current.StateChanged += (o, e) =>
            {
                if (e.NewState == BluetoothState.Off)
                {
                    CommonClass.checkBluetooth = false;
                }
                else
                {
                    CommonClass.checkBluetooth = true;
                }
            };
        }

		// this method is to find the current state of Bluetooth (either on or off) if it is unknown

        private Task<BluetoothState> GetBluetoothState(IBluetoothLE ble)
        {
            var tcs = new TaskCompletionSource<BluetoothState>();

            if (ble.State != BluetoothState.Unknown)
            {
                tcs.SetResult(ble.State);
            }

            else
            {
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
            if (CheckConnectToSPWiFi() == false)
            {
                InvokeOnMainThread(() =>
                {
                    ShowNoNetworkController();
                });
            }
            else
            {
                /* try-catch is necessary since the getting of lecturer's timetable data is from a dummy URL
                which requires Internet. Assuming in an event while trying to get lecturer's timetable data,
                the phone that is connected to SP WiFi, suddenly is disconnected from SP WiFi, without a try-catch,
                the app will crash. Therefore, having a try-catch to check if is connected to SP WiFi is crucial */
				
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
                        ShowNoNetworkController();
                    });
                }
            }
        }

        private void ShowNoNetworkController()
        {
            //Create Alert

            UIAlertController okAlertNetworkController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            //Add Action

            okAlertNetworkController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClick));

            // Present Alert

            PresentViewController(okAlertNetworkController, true, null);
        }

        private void AlertRetryClick(UIAlertAction obj)
        {
            InvokeOnMainThread(() => {
                GetTimetable(); 
            });
        }

        public bool CheckConnectToSPWiFi()
        {
            NetworkStatus internetStatus = Reachability.InternetConnectionStatus();

            if (internetStatus.Equals(NetworkStatus.NotReachable))
            {
                return false;
            }
            else
            {
                try
                {
                    NSDictionary dict;
                    var status = CaptiveNetwork.TryCopyCurrentNetworkInfo("en0", out dict);
                    var ssid = dict[CaptiveNetwork.NetworkInfoKeySSID];
                    string network = ssid.ToString();

                    if (network == "SPStaff") 
                    {
                        return true;
                    }
                    else
                    {
                        ShowNoNetworkController();
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        private void SetTableData()
        {
            foreach (LecturerModule module in lecturerTimetable.modules)
            {
                if (!module.abbr.Equals(""))
                {
                    /* the purpose of having to check whether attendanceTableViewItems.Count is equivalent to
                    lecturerTimetable.modules.Count is assuming if the user navigates to another page
                    i.e. LecturerBluetoothSwitchOffController page as Bluetooth has to be enabled first before 
                    able to generate he attendance for that lesson. At that page, after the user has enabed Bluetooth
                    and navigated back to the LecturerGenerateController page, the attendanceTableViewItems will
                    add those modules that were already been added when the user first navigates to 
                    LectureGenerateController page. So if attendanceTableViewItems.Count is equivalent to 
                    lecturerTimetable.modules.Count, attendanceTableVieItems will not add in any more
                    module. */

                    /* in summary, assuming if the user has already been to this controller page once,
                     if the user navigates to another page and wants to go back to this page again, 
                     it would refresh, reload and add those repeated mdoules that were already been shown
                     when the user first navigates. Hence, having a if-else is important */

                    if (attendanceTableViewItems.Count != lecturerTimetable.modules.Count)
                    {
                        attendanceTableViewItems.Add(new LecturerModuleTableViewItem(module.abbr) { ModuleCode = module.code, Venue = module.location, Time = module.time });
                    }
                }

                else
                {
                    if (attendanceTableViewItems.Count != lecturerTimetable.modules.Count)
                    {
                        attendanceTableViewItems.Add(new LecturerModuleTableViewItem("No lesson") { ModuleCode = "", Venue = "", Time = "" });
                        
                        // when the user presses on the tableView, nothing would happen

						tableView.AllowsSelection = false;
                    }
                }
            }
            var tableSource = new TableSource(attendanceTableViewItems, this.NavigationController);
            tableView.Source = tableSource;

            VerifyBle(); // when the user navigates to this page, it will check if user enables Bluetooth

			// reloads all the data (rows and sections of the tableview) that is used to construct the tableview

            tableView.ReloadData(); 
        }

        private void VerifyBle()
        {
            if (CommonClass.checkBluetooth == false)
            {
                UIAlertController okBluetoothAlertController = UIAlertController.Create("Bluetooth not enabled", "Please enable Bluetooth on your phone to generate attendance code!", UIAlertControllerStyle.Alert);

                okBluetoothAlertController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, null));

                PresentViewController(okBluetoothAlertController, true, null);
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
				string currentTimeString = DateTime.Now.ToString("mm/dd/yyyy HH:mm:ss");
				string currentTimeSubstring = currentTimeString.Substring(11, 8);
				TimeSpan currentTime = TimeSpan.Parse(currentTimeSubstring);

				string moduleStartTimeString = attendanceTableViewItems[indexPath.Row].Time.Substring(0, 5);
				TimeSpan moduleStartTime = TimeSpan.Parse(moduleStartTimeString);

				string moduleEndTimeString = attendanceTableViewItems[indexPath.Row].Time.Substring(6, 5);
				TimeSpan moduleEndTime = TimeSpan.Parse(moduleEndTimeString);

				TimeSpan maxTime = moduleStartTime + TimeSpan.Parse("00:15:00");

				/* this will be "brought" to BeaconTransmitController and LecturerAttendanceController to check 
                if the current time exceeds this value if exceeds, it will prompt the user and the user will 
                be navigated to this controller page. */

				CommonClass.maxTimeCheck = maxTime;

				// if current time exceeds the time of the current lesson by minimally at a duration of 15 minutes

				if (currentTime > moduleStartTime && (currentTime >= moduleEndTime || currentTime >= maxTime))
				{
					var lecturerAttendanceAfterGeneratingController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerAttendanceAfterGeneratingController");
					navigationController.PushViewController(lecturerAttendanceAfterGeneratingController, true);
				}

				/* if current time is within the 15 minutes of the lesson.
                i.e. if the lesson starts at 8am, this else-if will work if the current time is between
                08:00:00 and 08:14:59 */

				else if (currentTime >= moduleStartTime && currentTime <= maxTime)
				{
					if (CommonClass.checkBluetooth == true) // if Bluetooth is enabled
					{
						var beaconTransmitController = UIStoryboard.FromName("Main", null).InstantiateViewController("BeaconTransmitController");
						navigationController.PushViewController(beaconTransmitController, true);

						/* this is to get the current module that the user clicks, 'bringing' this value to
                        BeaconTransmitController which will allow it to be able to 'identify' which module did the
                        user click on LecturerGenerateController page previously */

						SharedData.moduleRowNumber = indexPath.Row;
					}
					else // if Bluetooth is not enabled
					{
						var lecturerBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerBluetoothSwitchOffController");
						navigationController.PushViewController(lecturerBluetoothSwitchOffController, true);
					}
				}

				/* if current time is not the time of that lesson
                i.e. assuming the current time is 8am, if the lecturer has another lesson that starts at 10am and he accidentally clicks on that lesson
                it will navigate him to the errorGeneratingAttendanceController page */

				else
				{
					var errorGeneratingAttendanceController = UIStoryboard.FromName("Main", null).InstantiateViewController("ErrorGeneratingAttendanceController");
					navigationController.PushViewController(errorGeneratingAttendanceController, true);
				}
            }
        }
    }
}