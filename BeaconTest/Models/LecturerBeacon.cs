using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace BeaconTest.Models
{
    public class LecturerBeacon
    {      
		[JsonProperty]
        public string StaffID { get; set; }
		[JsonProperty]
        public string BeaconKey { get; set; }
		[JsonProperty]
        public string ATS_Lecturer { get; set; }
		[JsonProperty]
        public int Major { get; set; }
		[JsonProperty]
        public int Minor { get; set; }
        //public string Venue { get; set; }
        public DateTime TimeGenerated { get; set; }

		public LecturerBeacon()
		{
			
		}
    }
}