using System.Windows.Input;
<<<<<<< HEAD
=======
using Plugin.Connectivity;
>>>>>>> 5047ecc2f7cb3099a570fc0bba55bf099c6c3dde

namespace BeaconTest
{
    public class AboutViewModel : BaseViewModel
    {
        public AboutViewModel()
        {
            Title = "About";

            OpenWebCommand = new Command(() => Plugin.Share.CrossShare.Current.OpenBrowser("https://xamarin.com/platform"));
        }

        public ICommand OpenWebCommand { get; }
    }
}
