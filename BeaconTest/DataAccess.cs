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

namespace BeaconTest
{
	public static class DataAccess
	{
		static HttpClient client = new HttpClient();

		private static string AuthenticationUrl = "https://testingfyp.azurewebsites.net/api/Authentication";
		private static string LecturerPostUrl = "https://testingfyp.azurewebsites.net/api/Lecturer";
		private static string StudentUrl = "https://testingfyp.azurewebsites.net/api/Student";
		private static string StudentTimetableURL = "http://mobileappnew.sp.edu.sg/spTimeTable/source/sptt.php?";

		public static string NoInternetConnection = "No Internet Connection";

		public static StudentTimetable studentTimetable;
		public static StudentModule currentModule;

		public static string beaconKey;

		public static async Task<bool> LoginAsync(string username, string password)
		{
			string urlParameters = "?username=" + username + "&password=" + password;
			var url = AuthenticationUrl + urlParameters;
			client.BaseAddress = new Uri(url);

			// List data response.
			HttpResponseMessage response = client.GetAsync(url).Result;  // Blocking call!
			if (response.IsSuccessStatusCode)
			{
				var responseString = await response.Content.ReadAsStringAsync();
				Debug.WriteLine(responseString);
				return true;
			}
			else
			{
				Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
				return false;
			}
		}

		/*public static async Task<bool> LecturerGenerateATS(LecturerBeacon lecturerBeacon)
		{
			var uri = new Uri(LecturerPostUrl);

			var json = JsonConvert.SerializeObject(lecturerBeacon);
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
				Debug.WriteLine("LecturerBeacon successfully submitted.");
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
		}*/

		public static async Task<bool> StudentSubmitATS(StudentSubmission studentSubmission)
		{
			var uri = new Uri(StudentUrl);

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

		/*public static async Task<LecturerBeacon> StudentGetBeacon()
		{
			string urlParameters = "/p1234567";
			var url = StudentUrl + urlParameters;
			client.BaseAddress = new Uri(url);

			// List data response.
			HttpResponseMessage response = client.GetAsync(url).Result;  // Blocking call!
			if (response.IsSuccessStatusCode)
			{
				var responseString = await response.Content.ReadAsStringAsync();
				Debug.WriteLine(responseString);
				LecturerBeacon lecturerBeacon = JsonConvert.DeserializeObject<LecturerBeacon>(responseString);
				return lecturerBeacon;
			}
			else
			{
				Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
				return null;
			}
		}*/

		public static async Task<StudentTimetable> GetStudentTimetable(string studentID)
		{
			string urlParameters = "id=" + studentID + "&DDMMYY=" + "240618";//DateTime.UtcNow.ToString("ddMMyy");
			var url = StudentTimetableURL + urlParameters;
			client.BaseAddress = new Uri(url);

			// List data response.
			HttpResponseMessage response = client.GetAsync(url).Result;  // Blocking call!
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

		public static string StudentGetBeaconKey()
		{
			studentTimetable = GetStudentTimetable(SharedData.testSPStudentID).Result;
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
            studentTimetable = GetStudentTimetable(SharedData.testSPStudentID).Result;
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

        public static int GetATS()
		{
			return int.Parse(SharedData.testATS);
		}
	}
}
