using System;
namespace BeaconTest
{
    public class ATS
    {
		public String ATSCode = "";

        public ATS()
		{
			Random generator = new Random();
            ATSCode = generator.Next(0, 999999).ToString("D6");
        }
    }
}
