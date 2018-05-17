using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BeaconTest.Models
{
    public class StudentSubmission
    {      
        public string AdmissionID { get; set; }
        public string BeaconKey { get; set; }
        public string ATS_Student { get; set; }
        public DateTime TimeSubmitted { get; set; }
      
		public StudentSubmission(string admissionID, string beaconKey, string ats_Student, DateTime timeSubmitted)
		{
			AdmissionID = admissionID;
			BeaconKey = beaconKey;
			ATS_Student = ats_Student;
			TimeSubmitted = timeSubmitted;
		}
	}
}