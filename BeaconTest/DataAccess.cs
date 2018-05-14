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
using UIKit;
using System.Text;

namespace BeaconTest
{
    public static class DataAccess
	{
		static HttpClient client = new HttpClient();
		//public static string AuthenticationUrl = "fyptest1819.azurewebsites.net/api/Authentication?username=&password=";
		private static string AuthenticationUrl = "https://fyptest1819.azurewebsites.net/api/Authentication";
		private static string LecturerPostUrl = "https://fyptest1819.azurewebsites.net/api/Lecturer";
		private static string StudentUrl = "https://fyptest1819.azurewebsites.net/api/Student";

		public static string NoInternetConnection = "No Internet Connection";
        
        public static async Task<bool> LoginAsync(string username, string password)
        {
			string urlParameters = "?username=" + username + "&password=" + password;
			var url = AuthenticationUrl + urlParameters;
			client.BaseAddress = new Uri(url);

            /*// Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));*/

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

		public static async Task<bool> LecturerGenerateATS(LecturerBeacon lecturerBeacon)
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
		}

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

		public static async Task<LecturerBeacon> StudentGetBeacon()
        {
			string urlParameters = "?admissionID=" + "p1234567";
			var url = StudentUrl + urlParameters;
            client.BaseAddress = new Uri(url);

            /*// Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));*/

            // List data response.
            HttpResponseMessage response = client.GetAsync(url).Result;  // Blocking call!
            if (response.IsSuccessStatusCode)
            {
                var responseString = await response.Content.ReadAsStringAsync();
                Debug.WriteLine(responseString);
				LecturerBeacon lecturerBeacon = new LecturerBeacon();
				return lecturerBeacon;
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
                return null;
            }
        }
	}
}
