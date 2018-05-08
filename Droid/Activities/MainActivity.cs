using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Views;
using Android.Widget;
using Android.Support.V4.App;
using Android.Support.V4.View;
using Android.Support.Design.Widget;

namespace BeaconTest.Droid
{
    [Activity(Label = "@string/app_name", Icon = "@mipmap/icon",
        LaunchMode = LaunchMode.SingleInstance,
        ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation,
        ScreenOrientation = ScreenOrientation.Portrait)]
    public class MainActivity : BaseActivity
    {
        protected override int LayoutResource => Resource.Layout.Login;

        //ViewPager pager;
        //TabsAdapter adapter;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Button submitBtn = FindViewById<Button>(Resource.Id.MyButton);
            EditText username = FindViewById<EditText>(Resource.Id.usernameInput);
            EditText pwd = FindViewById<EditText>(Resource.Id.passwordInput);

            submitBtn.Click += delegate
            {
                if (username.Text == "s123" && pwd.Text == "123")
                {
                    StartActivity(typeof(Timetable));
                }
                else if (username.Text == "p456" && pwd.Text == "456")
                {
                    StartActivity(typeof(EnterCode));
                }
                else
                {
                    AlertDialog.Builder alertDialog = new AlertDialog.Builder(this);
                    alertDialog.SetTitle("Invalid login");
                    alertDialog.SetMessage("Your login credentials are incorrect, please try again");
                    alertDialog.SetNeutralButton("OK", delegate
                    {
                        alertDialog.Dispose();
                    });
                    alertDialog.Show();
                }
            };

            //    adapter = new TabsAdapter(this, SupportFragmentManager);
            //    pager = FindViewById<ViewPager>(Resource.Id.viewpager);
            //    var tabs = FindViewById<TabLayout>(Resource.Id.tabs);
            //    pager.Adapter = adapter;
            //    tabs.SetupWithViewPager(pager);
            //    pager.OffscreenPageLimit = 3;

            //    pager.PageSelected += (sender, args) =>
            //    {
            //        var fragment = adapter.InstantiateItem(pager, args.Position) as IFragmentVisible;

            //        fragment?.BecameVisible();
            //    };

            //    Toolbar.MenuItemClick += (sender, e) =>
            //    {
            //        var intent = new Intent(this, typeof(AddItemActivity)); ;
            //        StartActivity(intent);
            //    };

            //    SupportActionBar.SetDisplayHomeAsUpEnabled(false);
            //    SupportActionBar.SetHomeButtonEnabled(false);
            //}

            //public override bool OnCreateOptionsMenu(IMenu menu)
            //{
            //    MenuInflater.Inflate(Resource.Menu.top_menus, menu);
            //    return base.OnCreateOptionsMenu(menu);
            //}
        }

        /*class TabsAdapter : FragmentStatePagerAdapter
        {
            string[] titles;

            public override int Count => titles.Length;

            public TabsAdapter(Context context, Android.Support.V4.App.FragmentManager fm) : base(fm)
            {
                titles = context.Resources.GetTextArray(Resource.Array.sections);
            }

            public override Java.Lang.ICharSequence GetPageTitleFormatted(int position) =>
                                new Java.Lang.String(titles[position]);

            public override Android.Support.V4.App.Fragment GetItem(int position)
            {
                switch (position)
                {
                    case 0: return BrowseFragment.NewInstance();
                    case 1: return AboutFragment.NewInstance();
                }
                return null;
            }

            public override int GetItemPosition(Java.Lang.Object frag) => PositionNone;
        }*/
    }
}
