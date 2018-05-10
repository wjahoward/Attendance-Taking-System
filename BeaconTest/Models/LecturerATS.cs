using System;

namespace FYP2.Models
{

    public class LecturerATS
    {
        private string beaconKey;
        //private string major;
        //private string minor;
        private string moduleCode;
        private string moduleClass;
        private string venue;
        private DateTime timeGenerated;
        private string staffID;

        public string BeaconKey { get; set; }
        //public string Major { get; set; }
        //public string Minor { get; set; }
        public string ModuleCode { get; set; }
        public string ModuleClass { get; set; }
        public string Venue { get; set; }
        public DateTime TimeGenerated { get; set; }
        public string StaffID { get; set; }
    }
}
