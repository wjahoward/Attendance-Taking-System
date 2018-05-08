using System;
using CoreGraphics;
using Foundation;
using UIKit;

namespace BeaconTest.iOS
{
    public class AttendanceCell : UITableViewCell
    {
        UILabel headingLabel, subheadingLabel;
        UIImageView imageView;
        public AttendanceCell(NSString cellId) : base(UITableViewCellStyle.Default, cellId)
        {
            SelectionStyle = UITableViewCellSelectionStyle.Default;
            ContentView.BackgroundColor = UIColor.Gray;
            imageView = new UIImageView();
            headingLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Medium", 22f),
                TextColor = UIColor.White,
                BackgroundColor = UIColor.Clear
            };
            subheadingLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Light", 12f),
                TextColor = UIColor.White,
                TextAlignment = UITextAlignment.Center,
                BackgroundColor = UIColor.Clear
            };
            ContentView.AddSubviews(new UIView[] { headingLabel, subheadingLabel, imageView });

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
            headingLabel.Frame = new CGRect(5, 4, ContentView.Bounds.Width - 63, 25);
            subheadingLabel.Frame = new CGRect(100, 18, 100, 20);
        }
    }
}
