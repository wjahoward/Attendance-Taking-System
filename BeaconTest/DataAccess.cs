using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Xml;
using BeaconTest.Models;
using Newtonsoft.Json;
using System.Text;
using System.Linq;
using System.Collections.ObjectModel;

namespace BeaconTest
{
    /* in general,
     for this class,
     these methods are to be in try-catch method as they require phone to be connected to SPWifi in order to execute the respective
     methods smoothly; otherwise, this will result in errors.
     These methods are dealing with JSON data */

	public static class DataAccess
	{
		static HttpClient client = new HttpClient();

		//private static string StudentTimetableURL = "http://mobileappnew.sp.edu.sg/spTimeTable/source/sptt.php?";
        private static string LecturerTimetableURL = "https://dummylecturertimetabledata.azurewebsites.net/api/Lecturer";
        public static string OverrideATSLecturerTimetableURL = "https://dummylecturertimetabledata.azurewebsites.net/api/Lecturer";
        public static string StudentTimetableURL = "https://dummylecturertimetabledata.azurewebsites.net/api/Student";
        private static string StudentSubmissionURL = "http://dummylecturertimetable.azurewebsites.net/api/StudentSubmission";
        private static string StudentAttendanceURL = "http://dummylecturertimetable.azurewebsites.net/api/StudentAttendance";

        public static string NoInternetConnection = "No Internet Connection";

		public static StudentTimetable studentTimetable;
		public static StudentModule currentModule;

        public static LecturerTimetable lecturerTimetable;
        public static LecturerModule lecturerModule;

        public static string beaconKey;

        public static async Task<bool> StudentSubmitATS(StudentSubmission studentSubmission)
        {
            var uri = new Uri(StudentSubmissionURL);

            var json = JsonConvert.SerializeObject(studentSubmission);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            client.DefaultRequestHeaders
                 .Accept
                 .Add(new MediaTypeWithQualityHeaderValue("application/json"));

            content.Headers.ContentType = new MediaTypeWithQualityHeaderValue("application/json");
            content.Headers.ContentLength = null;
            Debug.WriteLine(content.ToString());

            HttpResponseMessage response = client.PostAsync(uri, content).Result;

            if (response.IsSuccessStatusCode)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                Debug.WriteLine("Student Submission successfully submitted.");
                return true;
            }
            else
            {
                Debug.WriteLine(content.ReadAsStringAsync());
                Debug.WriteLine(response.RequestMessage);
                Debug.WriteLine(response.StatusCode);
                var responseString = await response.Content.ReadAsStringAsync();
                Debug.WriteLine(responseString);
            }
            return false;
        }

        public static async Task<bool> LecturerOverrideATS(LecturerModule lecturerModule)
        {
            var uri = new Uri(OverrideATSLecturerTimetableURL);

            var json = JsonConvert.SerializeObject(lecturerModule);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            client.DefaultRequestHeaders
                 .Accept
                 .Add(new MediaTypeWithQualityHeaderValue("application/json"));

            content.Headers.ContentType = new MediaTypeWithQualityHeaderValue("application/json");
            content.Headers.ContentLength = null;
            Debug.WriteLine(content.ToString());

            HttpResponseMessage response = client.PostAsync(uri, content).Result;

            if (response.IsSuccessStatusCode)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                Debug.WriteLine("Student Submission successfully submitted.");
                return true;
            }
            else
            {
                Debug.WriteLine(content.ReadAsStringAsync());
                Debug.WriteLine(response.RequestMessage);
                Debug.WriteLine(response.StatusCode);
                var responseString = await response.Content.ReadAsStringAsync();
                Debug.WriteLine(responseString);
            }
            return false;
        }

        public static async Task<StudentTimetable> GetStudentTimetable()
		{
            var url = StudentTimetableURL;
			client.BaseAddress = new Uri(url);

			// list data response.
			HttpResponseMessage response = client.GetAsync(url).Result;  // blocking call!
			if (response.IsSuccessStatusCode)
			{
				var responseString = await response.Content.ReadAsStringAsync();
				Debug.WriteLine(responseString);
				StudentTimetable timetable = JsonConvert.DeserializeObject<StudentTimetable>(responseString);
				timetable.modules = timetable.timetable.Select(z => z.module).ToList();
				return timetable;
			}
			else
			{
				Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
				return null;
			}
		}

        public static async Task<ObservableCollection<StudentSubmission>> GetStudentAttendance()
        {
            var url = StudentAttendanceURL;
            client.BaseAddress = new Uri(url);

            ObservableCollection<StudentSubmission> studentSubmissionList = new ObservableCollection<StudentSubmission>();

            // list data response.
            HttpResponseMessage response = client.GetAsync(url).Result;  // blocking call!
            if (response.IsSuccessStatusCode)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                dynamic studentAttendance = JsonConvert.DeserializeObject<dynamic>(responseString);
                for (int i = 0; i < studentAttendance.Count; i++)
                {
                    studentSubmissionList.Add(new StudentSubmission { AdmissionId = studentAttendance[i].AdmissionId, DateSubmitted = Convert.ToDateTime(studentAttendance[i].DateSubmitted.ToString()) });
                }

                return studentSubmissionList;
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
                return null;
            }
        }

        public static async Task<ObservableCollection<StudentSubmission>> GetStudentAttendanceIOS()
        {
            var url = StudentAttendanceURL;
            client.BaseAddress = new Uri(url);

            ObservableCollection<StudentSubmission> studentSubmissionList = new ObservableCollection<StudentSubmission>();

            // list data response.
            HttpResponseMessage response = client.GetAsync(url).Result;  // blocking call!
            if (response.IsSuccessStatusCode)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                dynamic studentAttendance = JsonConvert.DeserializeObject<dynamic>(responseString);
                for (int i = 0; i < studentAttendance.Count; i++)
                {
                    studentSubmissionList.Add(new StudentSubmission { AdmissionId = studentAttendance[i].AdmissionId, DateSubmitted = studentAttendance[i].DateSubmitted });
                }

                return studentSubmissionList;
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
                return null;
            }
        }

        public static async Task<LecturerTimetable> GetLecturerTimetable()
        {
            var url = LecturerTimetableURL;
            client.BaseAddress = new Uri(url);

            // list data response.
            HttpResponseMessage response = client.GetAsync(url).Result;  // blocking call!
            if (response.IsSuccessStatusCode)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                Debug.WriteLine(responseString);
                LecturerTimetable timetable = JsonConvert.DeserializeObject<LecturerTimetable>(responseString);
                timetable.modules = timetable.timetable.Select(z => z.module).ToList();
                return timetable;
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
                return null;
            }
        }

        public static string StudentGetBeaconKey()
		{
			studentTimetable = GetStudentTimetable().Result;
			currentModule = studentTimetable.GetCurrentModule();

            if (currentModule != null && !currentModule.abbr.Equals(""))
            {
                beaconKey = SharedData.testBeaconUUID;
				var beaconKeyStringBuilder = new StringBuilder(beaconKey);

				string moduleCodeNumber = "A" + currentModule.code.Remove(0, 2);
				string locationNumber = "B" + currentModule.location.Remove(0, 1);

				beaconKeyStringBuilder.Remove(beaconKey.Length - locationNumber.Length, locationNumber.Length);
				beaconKeyStringBuilder.Insert(beaconKeyStringBuilder.Length, locationNumber);
				beaconKeyStringBuilder.Remove(beaconKeyStringBuilder.Length - locationNumber.Length - moduleCodeNumber.Length, moduleCodeNumber.Length);
				beaconKeyStringBuilder.Insert(beaconKeyStringBuilder.Length - locationNumber.Length, moduleCodeNumber);
				beaconKey = beaconKeyStringBuilder.ToString();
                return beaconKey;
            }
            else
            {
                return null;
            }
        }

        public static string LecturerGetBeaconKey()
        {
            lecturerTimetable = GetLecturerTimetable().Result;
            lecturerModule = lecturerTimetable.GetCurrentModule(SharedData.moduleRowNumber);

            if (lecturerModule != null && !lecturerModule.abbr.Equals(""))
            {
                beaconKey = SharedData.testBeaconUUID;
                var beaconKeyStringBuilder = new StringBuilder(beaconKey);

                string moduleCodeNumber = "A" + lecturerModule.code.Remove(0, 2);
                string locationNumber = "B" + lecturerModule.location.Remove(0, 1);

                beaconKeyStringBuilder.Remove(beaconKey.Length - locationNumber.Length, locationNumber.Length);
                beaconKeyStringBuilder.Insert(beaconKeyStringBuilder.Length, locationNumber);
                beaconKeyStringBuilder.Remove(beaconKeyStringBuilder.Length - locationNumber.Length - moduleCodeNumber.Length, moduleCodeNumber.Length);
                beaconKeyStringBuilder.Insert(beaconKeyStringBuilder.Length - locationNumber.Length, moduleCodeNumber);
                beaconKey = beaconKeyStringBuilder.ToString();
                return beaconKey;
            }
            else
            {
                return null;
            }
        }
	}
}
