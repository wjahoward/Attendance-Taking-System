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
        List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();

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
            attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Student 1 Name") { ModuleCode = "Student 1 Adm No.", Venue = "Vegetables.jpg" });
            attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Student 2 Name") { ModuleCode = "Student 2 Adm No.", Venue = "Fruits.jpg" });
            tableView.Source = new TableSource(attendanceTableViewItems);

            setupRightNavigationButton();

            //Add(tableView);
        }

        private void setupRightNavigationButton() {
            var refreshButton = new UIBarButtonItem(UIBarButtonSystemItem.Refresh);
            NavigationItem.RightBarButtonItem = refreshButton;

            refreshButton.Clicked += (s, e) =>
            {
                // Testing to see if can change
                attendanceTableViewItems.Add(new LecturerModuleTableViewItem("Student 3 Name") { ModuleCode = "Student 3 Adm No.", Venue = "Fruits.jpg" });
                tableView.ReloadData();
            };
        }

        public class TableSource : UITableViewSource
        {

            List<LecturerModuleTableViewItem> attendanceTableViewItems = new List<LecturerModuleTableViewItem>();
            //string CellIdentifier = "TableCell";
            NSString cellIdentifier = new NSString("TableCell");
            UISegmentedControl mySegmentedControl = new UISegmentedControl("SegmentedControl");

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
                if (CommonClass.segmentNumber == 0)
                {
                    // For those students whom are present
                    if (indexPath.Row <= attendanceTableViewItems.Count - 1)
                    {
                        cell.UpdateCell(attendanceTableViewItems[indexPath.Row].ModuleName
                                        , attendanceTableViewItems[indexPath.Row].ModuleCode
                                        , attendanceTableViewItems[indexPath.Row].Venue
                                        , attendanceTableViewItems[indexPath.Row].Time);
                    }
                }
                else {
                    // For those students whom are absent
                    // Example below to show it changes
                    if (indexPath.Row <= attendanceTableViewItems.Count - 1)
                    {
                        cell.UpdateCell(attendanceTableViewItems[0].ModuleName
                                        , attendanceTableViewItems[0].ModuleCode
                                        , attendanceTableViewItems[0].Venue
                                        , attendanceTableViewItems[0].Time);
                    }
                }
                return cell;
            }
        }


        partial void SegmentedControl_ValChanged(UISegmentedControl sender)
        {
            //var index = SegmentedControl.SelectedSegment;
            var index = SegmentedControl.SelectedSegment;

            if (index == 0) {
                CommonClass.segmentNumber = 0;
            }
            else if (index == 1) {
                CommonClass.segmentNumber = 1;
            }
            tableView.ReloadData();
        }
    }
}