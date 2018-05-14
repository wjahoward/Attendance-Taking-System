using System;

namespace FYP2.Models {

    public class Lecturer
    {
        private String staffID;
        private String password;

        public Lecturer()
        {

        }

        public Lecturer(String staffID, String password)
        {
            this.staffID = staffID;
            this.password = password;
        }

        public String StaffID { get; set; }
        public String Password { get; set; }
    }
}
