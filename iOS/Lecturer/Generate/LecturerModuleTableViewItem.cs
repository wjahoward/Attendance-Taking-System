using System;
using UIKit;

namespace BeaconTest.iOS
{
    public class LecturerModuleTableViewItem
    {
        public LecturerModuleTableViewItem()
        {
        }

        public LecturerModuleTableViewItem(string heading)
        { ModuleName = heading; }

        public string ModuleName { get; set; }

		public string ModuleCode { get; set; }

		public string Time { get; set; }

        public string Venue { get; set; }

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
