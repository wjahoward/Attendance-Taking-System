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
using System.Collections.ObjectModel;

namespace BeaconTest.iOS
{
    public partial class LecturerListViewAttendanceController : UITableViewController
    {
        UITableView tableView;
        List<LecturerListViewTableViewItem> attendanceTableViewItems = new List<LecturerListViewTableViewItem>();
        LecturerTimetable lecturerTimetable;

        ObservableCollection<StudentSubmission> studentSubmissonList = new ObservableCollection<StudentSubmission>();

        public LecturerListViewAttendanceController(IntPtr handle) : base(handle)
        {

        }

        public override async void ViewDidLoad()
        {
            base.ViewDidLoad();

            await CheckBluetooth();

            //tableView = StudentAttendanceTableView; // defaults to Plain style
            //tableView.RowHeight = 120;
            var frame = CGRect.Empty;
            frame.Height = 0;
            frame.Width = 0;
            //tableView.TableFooterView = new UIView(frame);
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            UserDialogs.Instance.ShowLoading("Retrieving student attendance...");
            ThreadPool.QueueUserWorkItem(o => GetTimetable());
        }

        private async Task CheckBluetooth()
        {
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

        // this method is to find the current state of Bluetooth if it is unknown
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
                    studentSubmissonList = DataAccess.GetStudentAttendance().Result;
                    if (studentSubmissonList != null)
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

                    if (network == "SINGTEL-7E15")
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
            if (studentSubmissonList.Count == 0)
            {
                attendanceTableViewItems.Add(new LecturerListViewTableViewItem() { AdmissionId = "No student has submit" });
            }
            else
            {
                foreach (StudentSubmission attendance in studentSubmissonList)
                {
                    if (!attendance.AdmissionId.Equals(""))
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

                        /*if (attendanceTableViewItems.Count != lecturerTimetable.modules.Count)
                        {
                            attendanceTableViewItems.Add(new LecturerModuleTableViewItem(module.abbr) { ModuleCode = module.code, Venue = module.location, Time = module.time });
                        }*/

                        if (!attendance.AdmissionId.Equals(""))
                        {
                            attendanceTableViewItems.Add(new LecturerListViewTableViewItem(attendance.AdmissionId) { dateSubmitted = attendance.DateSubmitted });
                        }

                    }
                }
            }
            var tableSource = new TableSource(attendanceTableViewItems, this.NavigationController);
            tableView.Source = tableSource;

            VerifyBle(); // when the user navigates to this page, it will check if user enables Bluetooth

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
            List<LecturerListViewTableViewItem> attendanceTableViewItems = new List<LecturerListViewTableViewItem>();
            NSString cellIdentifier = new NSString("TableCell");
            UINavigationController navigationController;

            public TableSource(List<LecturerListViewTableViewItem> items, UINavigationController view)
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
                var cell = tableView.DequeueReusableCell(cellIdentifier) as LecturerListViewCell;
                if (cell == null)
                {
                    cell = new LecturerListViewCell(cellIdentifier);
                    if (attendanceTableViewItems[0].AdmissionId.Equals("No student has submit"))
                    {
                        //cell.generateLabel.Hidden = true;
                    }
                }

                if (indexPath.Row <= attendanceTableViewItems.Count - 1)
                {
                    cell.UpdateCell(attendanceTableViewItems[indexPath.Row].AdmissionId
                                    , attendanceTableViewItems[indexPath.Row].dateSubmitted.ToString());
                }

                return cell;
            }
        }
    }
}
