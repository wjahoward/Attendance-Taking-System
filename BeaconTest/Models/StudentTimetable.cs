using System;
using System.Collections.Generic;
using System.Text;

namespace BeaconTest.Models
{
    public class StudentTimetable
    {
		public IEnumerable<ModuleWrapper> timetable { get; set; }
		public List<StudentModule> modules { get; set; }

		public StudentModule GetCurrentModule()
		{
			foreach (StudentModule module in modules)
			{
				string startTimeInput = module.time.Substring(0, 5);
				string endTimeInput = module.time.Substring(6, 5);

				DateTime startTime = DateTime.Parse(startTimeInput);
				DateTime endTime = DateTime.Parse(endTimeInput);
				DateTime currentTime = DateTime.UtcNow;

				if(startTime.Subtract(currentTime).TotalMinutes <= 15 || endTime.Subtract(currentTime).TotalSeconds >= 60)
				{
					return module;
				}
			}

			return modules[0];
		}
    }
}
