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

namespace BeaconTest.iOS
{
    public partial class LecturerGenerateController : UITableViewController
    {
        UITableView tableView;
		List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
		StudentTimetable studentTimetable;

        public LecturerGenerateController(IntPtr handle) : base(handle)
        {

        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
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

			UserDialogs.Instance.ShowLoading("Retrieving module info...");
            ThreadPool.QueueUserWorkItem(o => GetTimetable());               
        }

		private void GetTimetable()
        {
            studentTimetable = DataAccess.GetStudentTimetable(SharedData.testSPStudentID).Result;
			if(studentTimetable != null)
			{
				InvokeOnMainThread(() =>
				{
					UserDialogs.Instance.HideLoading();
					SetTableData();
				});
			}
        }

		private void SetTableData()
		{
			foreach(StudentModule module in studentTimetable.modules)
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
			tableView.ReloadData();
		}

        public class TableSource : UITableViewSource
        {
            List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
            //string CellIdentifier = "TableCell";
            NSString cellIdentifier = new NSString("TableCell");
            UINavigationController navigationController;

            public TableSource(List<LecturerModuleTableViewItem> items, UINavigationController viewController)
            {
                attendanceTableViewItems = items;
                navigationController = viewController;
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
                /*cell.UpdateCell(attendanceTableViewItems[indexPath.Row].Heading
                                , attendanceTableViewItems[indexPath.Row].SubHeading
                                , UIImage.FromFile("Images/" + attendanceTableViewItems[indexPath.Row].ImageName));*/
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
                string currentTimeString = DateTime.Now.ToString("mm/dd/yyyy HH:mm:ss");
                string currentTimeSubstring = currentTimeString.Substring(11, 8);
                TimeSpan currentTime = TimeSpan.Parse(currentTimeSubstring);
                Console.WriteLine("Current time: {0}", currentTimeSubstring);

                string moduleStartTimeString = attendanceTableViewItems[indexPath.Row].Time.Substring(0, 5);
                TimeSpan moduleStartTime = TimeSpan.Parse(moduleStartTimeString);

                TimeSpan maxTime = moduleStartTime + TimeSpan.Parse("00:15:00");

                if (currentTime >= moduleStartTime && currentTime <= maxTime) {
                    if (CommonClass.checkBluetooth == true) { // rmb change this to true when run on actual iphone
                        var beaconTransmitController = UIStoryboard.FromName("Main", null).InstantiateViewController("BeaconTransmitController");
                        navigationController.PushViewController(beaconTransmitController, true);
                        CommonClass.moduleRowNumber = indexPath.Row;
                    }
                    else {
                        var lecturerBluetoothSwitchOffController = UIStoryboard.FromName("Main", null).InstantiateViewController("LecturerBluetoothSwitchOffController");
                        navigationController.PushViewController(lecturerBluetoothSwitchOffController, true);
                    }
                }
                else {
                    var errorGeneratingAttendanceController = UIStoryboard.FromName("Main", null).InstantiateViewController("ErrorGeneratingAttendanceController");
                    navigationController.PushViewController(errorGeneratingAttendanceController, true);
                }
			}
		}
    }
}