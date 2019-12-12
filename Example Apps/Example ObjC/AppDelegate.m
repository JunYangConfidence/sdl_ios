//
//  AppDelegate.m
//  SmartDeviceLink-iOS

#import "AppDelegate.h"

#import "ProxyManager.h"
#import "SDLLogMacros.h"
#import "SDLManager.h"
#import "ConnectionIAPTableViewController.h"
#import "PasswordViewController.h"
#import "PopupViewController.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Password window
	self.passwordWindow = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
	self.passwordWindow.rootViewController = [PasswordViewController new];
	[self.passwordWindow makeKeyAndVisible];

	// Popup window
	self.popupWindow = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
	self.popupWindow.rootViewController = [PopupViewController new];
	[self.popupWindow makeKeyAndVisible];

	// Network connection window
	UIStoryboard *iapControllerStoryboard = [UIStoryboard storyboardWithName:@"ConnectionIAPTableViewController" bundle:[NSBundle mainBundle]];
	ConnectionIAPTableViewController *iapController = [iapControllerStoryboard instantiateInitialViewController];
	self.networkConnectionWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	self.networkConnectionWindow.backgroundColor = UIColor.greenColor;
	self.networkConnectionWindow.rootViewController = iapController;

	self.window = self.networkConnectionWindow;
	[self.window makeKeyAndVisible];

	[ProxyManager.sharedManager startWithProxyTransportType:ProxyTransportTypeIAP];

	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
