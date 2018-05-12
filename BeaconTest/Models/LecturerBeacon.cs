using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestAzureApi.Models
{
    public class LecturerBeacon
    {
        private string staffID;
        //private string moduleCode;
        //private string moduleClass;
        //private DateTime startDateTime;
        private string beaconKey;
        private string ats_Lecturer;
        private int major;
        private int minor;
        //private string venue;
        private DateTime timeGenerated;

        public string StaffID { get; set; }
        //public string ModuleCode { get; set; }
        //public string ModuleClass { get; set; }
        //public DateTime StartDateTime { get; set; }
        public string BeaconKey { get; set; }
        public string ATS_Lecturer { get; set; }
        public int Major { get; set; }
        public int Minor { get; set; }
        //public string Venue { get; set; }
        public DateTime TimeGenerated { get; set; }
    }
}