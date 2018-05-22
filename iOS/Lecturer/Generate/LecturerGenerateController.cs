using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerGenerateController : UITableViewController
    {
        UITableView tableView;

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
            List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
			attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Module 1") { ModuleCode = "ModuleCode 1", Venue = "Venue 1", Time = "Time 1"});
			attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Module 2") { ModuleCode = "ModuleCode 2", Venue = "Venue 2", Time = "Time 2"});
            var tableSource = new TableSource(attendanceTableViewItems, this.NavigationController);
            tableView.Source = tableSource;

            //Add(tableView);
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
                    cell = new LecturerModuleCell(cellIdentifier);
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
                var beaconTransmitController = UIStoryboard.FromName("Main", null).InstantiateViewController("BeaconTransmitController");
                navigationController.PushViewController(beaconTransmitController, true);
			}
		}
    }
}