#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#define DEBUG 1
#include <stdarg.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <objc/message.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import <CloudKit/CloudKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreLocation/CoreLocation.h>
#import <SafariServices/SafariServices.h>
#import <Intents/Intents.h>
#import <CoreGraphics/CoreGraphics.h>

@class __MonoMac_NSActionDispatcher;
@class __MonoMac_NSAsyncActionDispatcher;
@class UIKit_UIControlEventProxy;
@class ItemDetailViewController;
@class AboutViewController;
@class ItemsViewController;
@class BeaconTest_iOS_ItemsDataSource;
@class ItemNewViewController;
@class TabBarController;
@class AppDelegate;
@class MainViewController;
@class BeaconTest_iOS_BeaconViewController_BTPeripheralDelegate;
@class BeaconViewController;
@class BeaconRangingController;
@class BeaconTest_iOS_EmptyClass;
@class __NSObject_Disposer;
@class CoreLocation_CLLocationManager__CLLocationManagerDelegate;
@class UIKit_UIScrollView__UIScrollViewDelegate;
@class UIKit_UITextView__UITextViewDelegate;
@class Plugin_Share_ShareActivityItemSource;

@interface ItemDetailViewController : UIViewController {
}
	@property (nonatomic, assign) UILabel * ItemDescriptionLabel;
	@property (nonatomic, assign) UILabel * ItemNameLabel;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UILabel *) ItemDescriptionLabel;
	-(void) setItemDescriptionLabel:(UILabel *)p0;
	-(UILabel *) ItemNameLabel;
	-(void) setItemNameLabel:(UILabel *)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface AboutViewController : UIViewController {
}
	@property (nonatomic, assign) UIImageView * AboutImageView;
	@property (nonatomic, assign) UITextView * AboutTextView;
	@property (nonatomic, assign) UILabel * AppNameLabel;
	@property (nonatomic, assign) UILabel * VersionLabel;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIImageView *) AboutImageView;
	-(void) setAboutImageView:(UIImageView *)p0;
	-(UITextView *) AboutTextView;
	-(void) setAboutTextView:(UITextView *)p0;
	-(UILabel *) AppNameLabel;
	-(void) setAppNameLabel:(UILabel *)p0;
	-(UILabel *) VersionLabel;
	-(void) setVersionLabel:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) ReadMoreButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface ItemsViewController : UITableViewController {
}
	@property (nonatomic, assign) UIButton * btnAddItem;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnAddItem;
	-(void) setBtnAddItem:(UIButton *)p0;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface ItemNewViewController : UIViewController {
}
	@property (nonatomic, assign) UIButton * btnSaveItem;
	@property (nonatomic, assign) UITextField * txtDesc;
	@property (nonatomic, assign) UITextField * txtTitle;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) btnSaveItem;
	-(void) setBtnSaveItem:(UIButton *)p0;
	-(UITextField *) txtDesc;
	-(void) setTxtDesc:(UITextField *)p0;
	-(UITextField *) txtTitle;
	-(void) setTxtTitle:(UITextField *)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface TabBarController : UITabBarController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface AppDelegate : NSObject<UIApplicationDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIWindow *) window;
	-(void) setWindow:(UIWindow *)p0;
	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1;
	-(void) applicationWillResignActive:(UIApplication *)p0;
	-(void) applicationDidEnterBackground:(UIApplication *)p0;
	-(void) applicationWillEnterForeground:(UIApplication *)p0;
	-(void) applicationDidBecomeActive:(UIApplication *)p0;
	-(void) applicationWillTerminate:(UIApplication *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface MainViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) viewDidLoad;
	-(void) didReceiveMemoryWarning;
	-(void) MonitorButton_TouchUpInside:(UIButton *)p0;
	-(void) TransmitButton_TouchUpInside:(UIButton *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface BeaconViewController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface BeaconRangingController : UIViewController {
}
	@property (nonatomic, assign) UILabel * NearestBeacon;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UILabel *) NearestBeacon;
	-(void) setNearestBeacon:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface BeaconTest_iOS_EmptyClass : NSObject<CBCentralManagerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) centralManagerDidUpdateState:(CBCentralManager *)p0;
	-(void) centralManager:(CBCentralManager *)p0 didDiscoverPeripheral:(CBPeripheral *)p1 advertisementData:(NSDictionary *)p2 RSSI:(NSNumber *)p3;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end


