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
#import <SafariServices/SafariServices.h>
#import <CoreLocation/CoreLocation.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>

@class UIApplicationDelegate;
@class UITableViewSource;
@class CBPeripheralManagerDelegate;
@class UIKit_UIControlEventProxy;
@class UIActivityItemSource;
@class __MonoMac_NSActionDispatcher;
@class __MonoMac_NSAsyncActionDispatcher;
@class AppDelegate;
@class StudentAttendanceController;
@class BeaconTest_iOS_LecturerModuleCell;
@class BeaconOutOfRangeController;
@class MainViewController;
@class BeaconRangingController;
@class BeaconTest_iOS_LecturerGenerateController_TableSource;
@class LecturerGenerateController;
@class BeaconTest_iOS_BeaconTransmitController_BTPeripheralDelegate;
@class BeaconTransmitController;
@class BeaconTest_iOS_LecturerAttendanceController_TableSource;
@class LecturerAttendanceController;
@class CoreLocation_CLLocationManager__CLLocationManagerDelegate;
@class UIKit_UIScrollView__UIScrollViewDelegate;
@class __NSObject_Disposer;
@class Plugin_Share_ShareActivityItemSource;

@interface UIApplicationDelegate : NSObject<UIApplicationDelegate> {
}
	-(id) init;
@end

@interface UITableViewSource : NSObject<UIScrollViewDelegate, UIScrollViewDelegate> {
}
	-(id) init;
@end

@interface CBPeripheralManagerDelegate : NSObject<CBPeripheralManagerDelegate> {
}
	-(id) init;
@end

@interface UIActivityItemSource : NSObject<UIActivityItemSource> {
}
	-(id) init;
@end

@interface AppDelegate : NSObject<UIApplicationDelegate, UIApplicationDelegate> {
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

@interface StudentAttendanceController : UITableViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface BeaconTest_iOS_LecturerModuleCell : UITableViewCell {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) layoutSubviews;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface BeaconOutOfRangeController : UIViewController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface MainViewController : UIViewController {
}
	@property (nonatomic, assign) UIButton * LoginButton;
	@property (nonatomic, assign) UITextField * PasswordField;
	@property (nonatomic, assign) UITextField * UsernameTextField;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UIButton *) LoginButton;
	-(void) setLoginButton:(UIButton *)p0;
	-(UITextField *) PasswordField;
	-(void) setPasswordField:(UITextField *)p0;
	-(UITextField *) UsernameTextField;
	-(void) setUsernameTextField:(UITextField *)p0;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface BeaconRangingController : UIViewController {
}
	@property (nonatomic, assign) UITextField * AttendanceCodeTextField;
	@property (nonatomic, assign) UIButton * EnterAttendanceCodeButton;
	@property (nonatomic, assign) UILabel * FoundBeacon;
	@property (nonatomic, assign) UILabel * ModuleNameLabel;
	@property (nonatomic, assign) UIImageView * StudentAttendanceIcon;
	@property (nonatomic, assign) UIButton * StudentSubmitButton;
	@property (nonatomic, assign) UILabel * TimePeriodLabel;
	@property (nonatomic, assign) UILabel * VenueLabel;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UITextField *) AttendanceCodeTextField;
	-(void) setAttendanceCodeTextField:(UITextField *)p0;
	-(UIButton *) EnterAttendanceCodeButton;
	-(void) setEnterAttendanceCodeButton:(UIButton *)p0;
	-(UILabel *) FoundBeacon;
	-(void) setFoundBeacon:(UILabel *)p0;
	-(UILabel *) ModuleNameLabel;
	-(void) setModuleNameLabel:(UILabel *)p0;
	-(UIImageView *) StudentAttendanceIcon;
	-(void) setStudentAttendanceIcon:(UIImageView *)p0;
	-(UIButton *) StudentSubmitButton;
	-(void) setStudentSubmitButton:(UIButton *)p0;
	-(UILabel *) TimePeriodLabel;
	-(void) setTimePeriodLabel:(UILabel *)p0;
	-(UILabel *) VenueLabel;
	-(void) setVenueLabel:(UILabel *)p0;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(void) didReceiveMemoryWarning;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface BeaconTest_iOS_LecturerGenerateController_TableSource : NSObject<UIScrollViewDelegate, UIScrollViewDelegate, UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(void) tableView:(UITableView *)p0 didSelectRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface LecturerGenerateController : UITableViewController {
}
	@property (nonatomic, assign) UITableView * TimetableTableView;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UITableView *) TimetableTableView;
	-(void) setTimetableTableView:(UITableView *)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface BeaconTest_iOS_BeaconTransmitController_BTPeripheralDelegate : NSObject<CBPeripheralManagerDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) peripheralManagerDidUpdateState:(CBPeripheralManager *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface BeaconTransmitController : UIViewController {
}
	@property (nonatomic, assign) UILabel * AttendanceCodeLabel;
	@property (nonatomic, assign) UILabel * ModuleNameLabel;
	@property (nonatomic, assign) UILabel * StudentCountLabel;
	@property (nonatomic, assign) UILabel * TimePeriodLabel;
	@property (nonatomic, assign) UILabel * VenueLabel;
	@property (nonatomic, assign) UIButton * ViewAttendanceButton;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UILabel *) AttendanceCodeLabel;
	-(void) setAttendanceCodeLabel:(UILabel *)p0;
	-(UILabel *) ModuleNameLabel;
	-(void) setModuleNameLabel:(UILabel *)p0;
	-(UILabel *) StudentCountLabel;
	-(void) setStudentCountLabel:(UILabel *)p0;
	-(UILabel *) TimePeriodLabel;
	-(void) setTimePeriodLabel:(UILabel *)p0;
	-(UILabel *) VenueLabel;
	-(void) setVenueLabel:(UILabel *)p0;
	-(UIButton *) ViewAttendanceButton;
	-(void) setViewAttendanceButton:(UIButton *)p0;
	-(void) didReceiveMemoryWarning;
	-(void) viewDidLoad;
	-(void) viewDidAppear:(BOOL)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface BeaconTest_iOS_LecturerAttendanceController_TableSource : NSObject<UIScrollViewDelegate, UIScrollViewDelegate, UIScrollViewDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(NSInteger) tableView:(UITableView *)p0 numberOfRowsInSection:(NSInteger)p1;
	-(UITableViewCell *) tableView:(UITableView *)p0 cellForRowAtIndexPath:(NSIndexPath *)p1;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface LecturerAttendanceController : UITableViewController {
}
	@property (nonatomic, assign) UITableView * AttendanceTableView;
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(UITableView *) AttendanceTableView;
	-(void) setAttendanceTableView:(UITableView *)p0;
	-(void) viewDidLoad;
	-(BOOL) conformsToProtocol:(void *)p0;
@end


