using System;
using CoreGraphics;
using Foundation;
using UIKit;

namespace BeaconTest.iOS
{
    public class AttendanceCell : UITableViewCell
    {
        UILabel headingLabel, subheadingLabel, generateLabel;
        UIImageView imageView;
        public AttendanceCell(NSString cellId) : base(UITableViewCellStyle.Default, cellId)
        {
            SelectionStyle = UITableViewCellSelectionStyle.Default;
            ContentView.BackgroundColor = UIColor.Clear;
            imageView = new UIImageView();
            headingLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Medium", 22f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
            subheadingLabel = new UILabel()
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
            ContentView.AddSubviews(new UIView[] { headingLabel, subheadingLabel, generateLabel, imageView });

        }
        /*public void UpdateCell(string caption, string subtitle, UIImage image)
        {
            imageView.Image = image;
            headingLabel.Text = caption;
            subheadingLabel.Text = subtitle;
        }*/
        public void UpdateCell(string caption, string subtitle)
        {
            //imageView.Image = image;
            headingLabel.Text = caption;
            subheadingLabel.Text = subtitle;
        }
        public override void LayoutSubviews()
        {
            base.LayoutSubviews();
            imageView.Frame = new CGRect(ContentView.Bounds.Width - 63, 5, 33, 33);
            headingLabel.Frame = new CGRect(5, 5, ContentView.Bounds.Width - 63, 25);
            subheadingLabel.Frame = new CGRect(7, 40, 100, 20);
            generateLabel.Frame = new CGRect(ContentView.Bounds.Width - 80, 20, 100, 20);
        }
    }
}
