using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BeaconTest.Models
{
    public class StudentSubmission
    {
        public string AdmissionId { get; set; }
        public DateTime DateSubmitted { get; set; }

        public StudentSubmission()
        {

        }

        public StudentSubmission(string AdmissionId, DateTime DateSubmitted)
        {
            this.AdmissionId = AdmissionId;
            this.DateSubmitted = DateSubmitted;
        }
    }
}