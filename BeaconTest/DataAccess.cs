using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Xml;
using TestAzureApi.Models;
using UIKit;

namespace BeaconTest
{
    public static class DataAccess
	{
		static HttpClient client = new HttpClient();
		//public static string AuthenticationUrl = "fyptest1819.azurewebsites.net/api/Authentication?username=&password=";
		public static string AuthenticationUrl = "https://fyptest1819.azurewebsites.net/api/Authentication";
		public static string LecturerPostUrl = "fyptest1819.azurewebsites.net/api/Lecturer";
		public static string StudentPostUrl = "fyptest1819.azurewebsites.net/api/Student";

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

		/*public static async Task<bool> LecturerGenerateATS(LecturerBeacon lecturerBeacon)
		{         
			var httpWebRequest = (HttpWebRequest)WebRequest.Create(LecturerPostUrl);
            httpWebRequest.ContentType = "application/json";
            httpWebRequest.Method = "POST";

            using (var streamWriter = new StreamWriter(httpWebRequest.GetRequestStream()))
            {
                string json = "{\"user\":\"test\"," +
                              "\"password\":\"bla\"}";

                streamWriter.Write(json);
                streamWriter.Flush();
                streamWriter.Close();
            }

            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();
            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                var result = streamReader.ReadToEnd();
            }

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));*/

            // List data response.
			/*HttpResponseMessage response = client.PostAsync(LecturerPostUrl).Result;  // Blocking call!
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
		}*/

		public static async Task<bool> StudentSubmitATS()
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

		public static async Task<bool> StudentGetATS()
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

		public static string PostXMLData(string destinationUrl, string requestXml)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(destinationUrl);

			//HttpContent httpContent = new StringContent(workItem.XDocument.ToString(), Encoding.UTF8, "application/xml");

            byte[] bytes;
            bytes = System.Text.Encoding.ASCII.GetBytes(requestXml);

            request.ContentType = "text/xml; encoding='utf-8'";
            request.ContentLength = bytes.Length;
            request.Method = "POST";

            Stream requestStream = request.GetRequestStream();
            requestStream.Write(bytes, 0, bytes.Length);
            requestStream.Close();

            HttpWebResponse response;
            response = (HttpWebResponse)request.GetResponse();

            if (response.StatusCode == HttpStatusCode.OK)
            {
                Stream responseStream = response.GetResponseStream();
                string responseStr = new StreamReader(responseStream).ReadToEnd();
                return responseStr;
            }
            return null;
        }
        
        public static void PostXMLData2()
		{
			using (var client = new HttpClient())
            {
                /*var url = string.Format(_endpoint + "GetOrderLines");
                var package = JsonConvert.SerializeObject(ordId);

                HttpContent content = new StringContent(package, Encoding.UTF8, WebConstants.ContentTypeJson);
                content.Headers.Add(_header, token);

                var resp = await client.PostAsync(url, content, ct);

                if (resp.StatusCode == HttpStatusCode.Unauthorized)
                {
                    throw new SecurityException(WebConstants.ServiceSecWarning, new Exception(resp.Content.ToString()));
                }

                var result = JsonConvert.DeserializeObject<List<OrderLine>>(resp.Content.ReadAsStringAsync().Result);
                return result;*/
            }
		}
	}
}
