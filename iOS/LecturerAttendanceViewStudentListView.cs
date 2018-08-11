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
using CoreLocation;
using CoreBluetooth;
using System.Diagnostics;
using CoreFoundation;
using System.Timers;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceViewStudentListView : UITableViewController
    {
        UITableView tableView;
        List<LecturerListViewTableViewItem> attendanceTableViewItems = new List<LecturerListViewTableViewItem>();
        LecturerTimetable lecturerTimetable;

        ObservableCollection<StudentSubmission> studentSubmissonList = new ObservableCollection<StudentSubmission>();

        private UIRefreshControl refreshControl;

        bool useRefreshControl = false;

        BTPeripheralDelegate peripheralDelegate;
        CBPeripheralManager peripheralManager;
        CLBeaconRegion beaconRegion;

        System.Timers.Timer beaconTransmitTimer = new System.Timers.Timer();
        UIAlertController okAlertLessonTimeOutController;

        public LecturerAttendanceViewStudentListView(IntPtr handle) : base(handle)
        {
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager = new CBPeripheralManager(peripheralDelegate, DispatchQueue.DefaultGlobalQueue);
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            // customise the Navigation Bar
            this.NavigationController.NavigationBar.BarTintColor = UIColor.FromRGB(BeaconTest.SharedData.primaryColourRGB[0], BeaconTest.SharedData.primaryColourRGB[1], BeaconTest.SharedData.primaryColourRGB[2]);
            this.NavigationController.NavigationBar.TintColor = UIColor.White;
            this.NavigationController.NavigationBar.TitleTextAttributes = new UIStringAttributes()
            {
                ForegroundColor = UIColor.White
            };

            tableView = StudentAttendanceTableView; // defaults to Plain style
            tableView.RowHeight = 120;
            var frame = CGRect.Empty;
            frame.Height = 0;
            frame.Width = 0;
            tableView.TableFooterView = new UIView(frame);

            refreshControl = new UIRefreshControl();
            refreshControl.ValueChanged += refreshTable;

            tableView.AddSubview(refreshControl);
        }

        private void refreshTable(object sender, EventArgs e)
        {
            testingMethod();
        }

        private void testingMethod()
        {
            if (CommonClass.testing > 0)
            {
                studentSubmissonList.Clear();
                CommonClass.testingList.Clear();
                //CommonClass.lecturerListViewAttendanceBluetoothThreadCheck = false;
                GetTimetable();
            }
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);

            NavigationController.NavigationBarHidden = false;

            beaconTransmitTimer.Elapsed += OnTimedEvent;
            beaconTransmitTimer.Start();

            CommonClass.lecturerListViewAttendanceBluetoothThreadCheck = true;

            if (CommonClass.lecturerListViewWentOnce == false)
            {
                CommonClass.lecturerListViewWentOnce = true;
                UserDialogs.Instance.ShowLoading("Retrieving student attendance...");
                ThreadPool.QueueUserWorkItem(o => GetTimetable());
            }

            else
            {
                testing();
            }
        }

        private void OnTimedEvent(object source, ElapsedEventArgs e)
        {
            DateTime currentTime = DateTime.Now;
            currentTime += new TimeSpan(0, 0, 1);

            string formattedCurrentTime = currentTime.ToString("HH:mm:ss");
            TimeSpan currentTimeTimeSpan = TimeSpan.Parse(formattedCurrentTime);
            Console.WriteLine(currentTimeTimeSpan);

            if (currentTimeTimeSpan >= CommonClass.maxTimeCheck)
            {
                peripheralManager.StopAdvertising();

                beaconTransmitTimer.Stop();

                InvokeOnMainThread(() =>
                {
                    okAlertLessonTimeOutController = UIAlertController.Create("Lesson timeout", "You have reached 15 minutes of the lesson, please proceed back to Timetable page", UIAlertControllerStyle.Alert);

                    okAlertLessonTimeOutController.AddAction(UIAlertAction.Create("OK", UIAlertActionStyle.Default, TimeIsUp));

                    PresentViewController(okAlertLessonTimeOutController, true, null);
                });
            }
        }

        private void TimeIsUp(UIAlertAction obj)
        {
            var viewController = this.Storyboard.InstantiateViewController("LecturerNavigationController");

            if (viewController != null)
            {
                this.PresentViewController(viewController, true, null);
            }
        }

        private void testing()
        {
            if (CheckConnectToSPWiFi() == false)
            {
                ShowNoNetworkControllerNoBluetooth();
            }
            else
            {
                try
                {
                    InitBeacon();
                    CheckMethod();
                    CommonClass.lecturerListViewAttendanceBluetoothThreadCheck = true;
                    CheckBluetoothAvailable();
                }
                catch (Exception ex)
                {
                    ShowNoNetworkControllerNoBluetooth();
                }
            }
        }

        // if navigate back to BeaconTransmitController page
        public override void ViewDidDisappear(bool animated)
        {
            base.ViewDidDisappear(animated);

            CommonClass.lecturerListViewAttendanceBluetoothThreadCheck = false;

            peripheralManager.StopAdvertising();

            beaconTransmitTimer.Stop();
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
                    if (CommonClass.checkBluetoothOnceBeforeSwipe == false)
                    {
                        CommonClass.lecturerListViewAttendanceBluetoothThreadCheck = true;
                    }

                    InitBeacon();

                    studentSubmissonList = DataAccess.GetStudentAttendanceIOS().Result;
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

        private void InitBeacon()
        {
            string atsCode = CommonClass.atscode;
            string atsCode1stHalf = atsCode.Substring(0, 3);
            string atsCode2ndHalf = atsCode.Substring(3, 3);

            string atsCode1stHalfEncrypted = Encryption(atsCode1stHalf).ToString();
            string atsCode2ndHalfEncrypted = Encryption(atsCode2ndHalf).ToString();

            beaconRegion = new CLBeaconRegion(new NSUuid(DataAccess.LecturerGetBeaconKey()), (ushort)int.Parse(atsCode1stHalfEncrypted), (ushort)int.Parse(atsCode2ndHalfEncrypted), SharedData.beaconId);

            //power - the received signal strength indicator (RSSI) value (measured in decibels) of the beacon from one meter away
            var power = BeaconPower();

            var peripheralData = beaconRegion.GetPeripheralData(power);
            peripheralDelegate = new BTPeripheralDelegate();
            peripheralManager.StartAdvertising(peripheralData);
        }

        private int Encryption(string atscode)
        {
            int numberATSCode = Convert.ToInt32(atscode);
            int newATSCodeEncrypted = (numberATSCode * 5 + 136) * 7;
            return newATSCodeEncrypted;
        }

        public class BTPeripheralDelegate : CBPeripheralManagerDelegate
        {
            public override void StateUpdated(CBPeripheralManager peripheral)
            {
                if (peripheral.State == CBPeripheralManagerState.PoweredOn)
                {
                    Console.WriteLine("Powered on");
                }
                else
                {
                    Debug.WriteLine("Bluetooth not available");
                }
            }
        }

        private NSNumber BeaconPower()
        {
            switch (CommonClass.moduleType)
            {
                case "LAB":
                    return new NSNumber(-84);
                case "TUT":
                    return new NSNumber(-84);
                case "LEC":
                    return new NSNumber(-81);
            }
            return null;
        }

        private async void CheckBluetoothAvailable()
        {
            if (CommonClass.lecturerListViewAttendanceBluetoothThreadCheck == true)
            {
                bool isBluetooth = await Task.Run(() => this.BluetoothRechableOrNot());

                if (!isBluetooth)
                {
                    this.InvokeOnMainThread(() =>
                    {
                        try
                        {
                            CommonClass.lecturerListViewAttendanceBluetoothThreadCheck = false;
                            var lecturerBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerBluetoothSwitchOffController");
                            this.NavigationController.PushViewController(lecturerBluetoothSwitchOffController, true);
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine("BluetoothReachability -> CheckBluetoothRechability:" + ex.Message);
                        }
                    });
                }
                else
                {
                    CheckBluetoothAvailable();
                }
            }
            else
            {

            }
        }

        private bool BluetoothRechableOrNot()
        {
            if (CommonClass.checkBluetooth == false)
            {
                return false;
            }
            return true;
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

        private void ShowNoNetworkControllerNoBluetooth()
        {
            //Create Alert
            UIAlertController okAlertNetworkController = UIAlertController.Create("SP Wifi not enabled", "Please turn on SP Wifi", UIAlertControllerStyle.Alert);

            //Add Action
            okAlertNetworkController.AddAction(UIAlertAction.Create("Retry", UIAlertActionStyle.Default, AlertRetryClickNoBluetooth));

            // Present Alert
            PresentViewController(okAlertNetworkController, true, null);
        }

        private void AlertRetryClickNoBluetooth(UIAlertAction obj)
        {
            testing();
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
                attendanceTableViewItems.Add(new LecturerListViewTableViewItem() { AdmissionId = "No student submit ATS yet." });
            }
            else
            {
                foreach (StudentSubmission attendance in studentSubmissonList)
                {
                    if (!attendance.AdmissionId.Equals(""))
                    {
                        if (!attendance.AdmissionId.Equals(""))
                        {
                            attendanceTableViewItems.Add(new LecturerListViewTableViewItem(attendance.AdmissionId) { dateSubmitted = attendance.DateSubmitted });
                        }

                    }
                }
            }

            CheckMethod();

            var tableSource = new TableSource(attendanceTableViewItems, this.NavigationController);
            tableView.Source = tableSource;

            refreshControl.EndRefreshing();

            tableView.ReloadData();

            if (CommonClass.checkBluetoothOnceBeforeSwipe == false)
            {
                CheckBluetoothAvailable();
            }

            CommonClass.checkBluetoothOnceBeforeSwipe = true;
        }

        private void CheckMethod()
        {
            if (CommonClass.check == true)
            {
                if (attendanceTableViewItems[0].AdmissionId == "No student submit ATS yet.")
                {
                    CommonClass.lecturerListViewCell.dateSubmittedLabel.Hidden = true;
                }
                else
                {
                    CommonClass.lecturerListViewCell.dateSubmittedLabel.Hidden = false;
                }
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
                CommonClass.testing = attendanceTableViewItems.Count;
                CommonClass.testingList = attendanceTableViewItems;
                CommonClass.check = true;

                var cell = tableView.DequeueReusableCell(cellIdentifier) as LecturerListViewCell;

                if (cell == null)
                {
                    cell = new LecturerListViewCell(cellIdentifier);
                    CommonClass.lecturerListViewCell = cell;
                    if (attendanceTableViewItems[0].AdmissionId.Equals("No student submit ATS yet."))
                    {
                        cell.dateSubmittedLabel.Hidden = true;
                    }
                    else
                    {
                        if (cell.dateSubmittedLabel.Hidden == true)
                        {
                            cell.dateSubmittedLabel.Hidden = false;
                        }
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
