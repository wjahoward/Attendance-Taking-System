using System;

/// <summary>
/// Summary description for Class1
/// </summary>
namespace FYP2.Models
{
    public class Student
    {
        private string admissionID;
        private string password;

        public Student()
        {

        }

        public Student(string admissionID, string password)
        {
            this.admissionID = admissionID;
            this.password = password;
        }

        public string AdmissionID { get; set; }
        public string Password { get; set; }
    }
}
