using System;
using CoreGraphics;
using Foundation;
using UIKit;

namespace BeaconTest.iOS
{
    public class LecturerModuleCell : UITableViewCell
    {
		public UILabel moduleNameLabel, moduleCodeLabel, venueLabel, timeLabel, generateLabel;
        public UIImageView imageView;
        public LecturerModuleCell(NSString cellId) : base(UITableViewCellStyle.Default, cellId)
        {
            SelectionStyle = UITableViewCellSelectionStyle.Default;
            ContentView.BackgroundColor = UIColor.Clear;
            imageView = new UIImageView();
            moduleNameLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Medium", 22f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
            moduleCodeLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Light", 12f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
			venueLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Light", 12f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
			timeLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Light", 12f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
            generateLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Light", 12f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear,
                Text = "Generate ATS"
            };
			ContentView.AddSubviews(new UIView[] { moduleNameLabel, moduleCodeLabel, venueLabel, timeLabel, generateLabel, imageView });

        }
        /*public void UpdateCell(string caption, string subtitle, UIImage image)
        {
            imageView.Image = image;
            headingLabel.Text = caption;
            subheadingLabel.Text = subtitle;
        }*/
        public void UpdateCell(string caption, string subtitle, string venue, string time)
        {
            //imageView.Image = image;
            moduleNameLabel.Text = caption;
            moduleCodeLabel.Text = subtitle;
			venueLabel.Text = venue;
			timeLabel.Text = time;
        }
        public override void LayoutSubviews()
        {
            base.LayoutSubviews();
            imageView.Frame = new CGRect(ContentView.Bounds.Width - 63, 5, 33, 33);
            moduleNameLabel.Frame = new CGRect(5, 5, ContentView.Bounds.Width - 63, 25);
            moduleCodeLabel.Frame = new CGRect(7, 40, 100, 20);
			venueLabel.Frame = new CGRect(7, 60, 100, 20);
			timeLabel.Frame = new CGRect(7, 80, 100, 20);
            generateLabel.Frame = new CGRect(ContentView.Bounds.Width - 80, 50, 100, 20);
        }
    }
}
