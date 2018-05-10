using System;
using System.Diagnostics;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace BeaconTest
{
    public static class DataAccess
	{
		static HttpClient client = new HttpClient();
		//public static string AuthenticationUrl = "fyptest1819.azurewebsites.net/api/Authentication?username=&password=";
		public static string AuthenticationUrl = "https://fyptest1819.azurewebsites.net/api/Authentication";
		public static string LecturerPostUrl = "fyptest1819.azurewebsites.net/api/Lecturer";
		public static string StudentPostUrl = "fyptest1819.azurewebsites.net/api/Student";
        
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

		public static async Task<bool> LecturerSendTransmittedData()
		{
			string urlParameters = "";
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

		public static async Task<bool> StudentSendReceivedData()
		{
			string urlParameters = "";
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
	}
}
