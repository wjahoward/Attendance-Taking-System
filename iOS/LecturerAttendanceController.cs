using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using UIKit;

namespace BeaconTest.iOS
{
    public partial class LecturerAttendanceController : UITableViewController
    {
        UITableView tableView;

        public LecturerAttendanceController (IntPtr handle) : base (handle)
        {
            
        }

		public override void ViewDidLoad()
		{
            base.ViewDidLoad();
            tableView = AttendanceTableView; // defaults to Plain style
            var frame = CGRect.Empty;
            frame.Height = 0;
            frame.Width = 0;
            tableView.TableFooterView = new UIView(frame);
            List<LecturerAttendanceTableViewItem> attendanceTableViewItems = new List<LecturerAttendanceTableViewItem>();
            attendanceTableViewItems.Add(new LecturerAttendanceTableViewItem("Student 1 Name") { SubHeading = "Student 1 Adm No.", ImageName = "Vegetables.jpg" });
            attendanceTableViewItems.Add(new LecturerAttendanceTableViewItem("Student 2 Name") { SubHeading = "Student 2 Adm No.", ImageName = "Fruits.jpg" });
            tableView.Source = new TableSource(attendanceTableViewItems);

            //Add(tableView);
		}

		public class TableSource : UITableViewSource
        {

            List<LecturerAttendanceTableViewItem> attendanceTableViewItems = new List<LecturerAttendanceTableViewItem>();
            //string CellIdentifier = "TableCell";
            NSString cellIdentifier = new NSString("TableCell");

            public TableSource(List<LecturerAttendanceTableViewItem> items)
            {
                attendanceTableViewItems = items;
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
        }
    }
}