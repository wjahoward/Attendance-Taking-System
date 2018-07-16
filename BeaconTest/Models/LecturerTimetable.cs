using System;
using System.Collections.Generic;
using System.Text;

namespace BeaconTest.Models
{
    public class LecturerTimetable
    {
        public IEnumerable<LecturerModuleWrapper> timetable { get; set; }
        public List<LecturerModule> modules { get; set; }

        public LecturerModule GetCurrentModule()
        {
            return modules[0];
        }

        public LecturerModule GetCurrentModule(int moduleRowNumber)
        {
            return modules[moduleRowNumber];
        }
    }
}
