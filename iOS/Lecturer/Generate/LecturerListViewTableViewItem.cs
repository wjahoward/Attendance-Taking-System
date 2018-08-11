using System;
using UIKit;

namespace BeaconTest.iOS
{
    public class LecturerListViewTableViewItem
    {
        public LecturerListViewTableViewItem()
        {
        }

        public LecturerListViewTableViewItem(string heading)
        { AdmissionId = heading; }

        public int Id { get; set; }

        public string AdmissionId { get; set; }

        public DateTime dateSubmitted { get; set; }

        public UITableViewCellStyle CellStyle
        {
            get { return cellStyle; }
            set { cellStyle = value; }
        }
        protected UITableViewCellStyle cellStyle = UITableViewCellStyle.Default;

        public UITableViewCellAccessory CellAccessory
        {
            get { return cellAccessory; }
            set { cellAccessory = value; }
        }
        protected UITableViewCellAccessory cellAccessory = UITableViewCellAccessory.None;
    }
}
