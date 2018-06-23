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
            List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
            attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Student 1 Name") { ModuleCode = "Student 1 Adm No.", Venue = "Vegetables.jpg" });
            attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Student 2 Name") { ModuleCode = "Student 2 Adm No.", Venue = "Fruits.jpg" });
            tableView.Source = new TableSource(attendanceTableViewItems);

            //Add(tableView);
        }

        public class TableSource : UITableViewSource
        {

            List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
            //string CellIdentifier = "TableCell";
            NSString cellIdentifier = new NSString("TableCell");

            public TableSource(List<LecturerModuleTableViewItem> items)
            {
                attendanceTableViewItems = items;
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
        }
    }
}