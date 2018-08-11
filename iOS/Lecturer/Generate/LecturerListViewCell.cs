using System;
using CoreGraphics;
using Foundation;
using UIKit;

namespace BeaconTest.iOS
{
    public class LecturerListViewCell : UITableViewCell
    {
        public UILabel admissionIdLabel, dateSubmittedLabel;
        public UIImageView imageView;
        public LecturerListViewCell(NSString cellId) : base(UITableViewCellStyle.Default, cellId)
        {
            SelectionStyle = UITableViewCellSelectionStyle.Default;
            ContentView.BackgroundColor = UIColor.Clear;
            admissionIdLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Medium", 22f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
            dateSubmittedLabel = new UILabel()
            {
                Font = UIFont.FromName("HelveticaNeue-Light", 12f),
                TextColor = UIColor.Black,
                BackgroundColor = UIColor.Clear
            };
            ContentView.AddSubviews(new UIView[] { admissionIdLabel, dateSubmittedLabel });

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
            admissionIdLabel.Text = caption;
            dateSubmittedLabel.Text = subtitle;
        }
        public override void LayoutSubviews()
        {
            base.LayoutSubviews();
            admissionIdLabel.Frame = new CGRect(5, 5, ContentView.Bounds.Width - 63, 25);
            dateSubmittedLabel.Frame = new CGRect(7, 40, 150, 10);
        }
    }
}
