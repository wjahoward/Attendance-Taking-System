using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BeaconTest.Models
{
    public class StudentSubmission
    {
        private string admissionID;
        private string beaconKey;
        private string ats_Student;
        private DateTime timeSubmitted;

        public string AdmissionID { get; set; }
        public string BeaconKey { get; set; }
        public string ATS_Student { get; set; }
        public DateTime TimeSubmitted { get; set; }
    }
}