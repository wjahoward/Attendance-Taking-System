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
            tableView = TimetableTableView; // defaults to Plain style
            var frame = CGRect.Empty;
            frame.Height = 0;
            frame.Width = 0;
            tableView.TableFooterView = new UIView(frame);
            List<LecturerAttendanceTableViewItem> attendanceTableViewItems = new List<LecturerAttendanceTableViewItem>();
            attendanceTableViewItems.Add(new LecturerAttendanceTableViewItem("Lesson 1") { SubHeading = "Venue 1", ImageName = "Vegetables.jpg" });
            attendanceTableViewItems.Add(new LecturerAttendanceTableViewItem("Lesson 2") { SubHeading = "Venue 2", ImageName = "Fruits.jpg" });
            tableView.Source = new TableSource(attendanceTableViewItems, this.NavigationController);

            //Add(tableView);
        }

        public class TableSource : UITableViewSource
        {

            List<LecturerAttendanceTableViewItem> attendanceTableViewItems = new List<LecturerAttendanceTableViewItem>();
            //string CellIdentifier = "TableCell";
            NSString cellIdentifier = new NSString("TableCell");
            UINavigationController navigationController;

            public TableSource(List<LecturerAttendanceTableViewItem> items, UINavigationController viewController)
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
                var cell = tableView.DequeueReusableCell(cellIdentifier) as AttendanceCell;
                if (cell == null)
                    cell = new AttendanceCell(cellIdentifier);
                Debug.WriteLine(attendanceTableViewItems[0].Heading);
                /*cell.UpdateCell(attendanceTableViewItems[indexPath.Row].Heading
                                , attendanceTableViewItems[indexPath.Row].SubHeading
                                , UIImage.FromFile("Images/" + attendanceTableViewItems[indexPath.Row].ImageName));*/
                if (indexPath.Row <= attendanceTableViewItems.Count - 1)
                {
                    cell.UpdateCell(attendanceTableViewItems[indexPath.Row].Heading
                                   , attendanceTableViewItems[indexPath.Row].SubHeading);
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