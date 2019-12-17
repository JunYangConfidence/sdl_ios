//
//  SDLLockScreenRootViewController.m
//  SmartDeviceLink
//
//  Created by Nicole on 12/12/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLLockScreenRootViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLLockScreenRootViewController ()

@end

@implementation SDLLockScreenRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
}


#pragma mark - Orientation

/// The view controller should inherit the orientation of the view controller over which the lock screen is being presented.
/// HAX: https://github.com/smartdevicelink/sdl_ios/issues/1250
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    UIViewController *viewController = [self sdl_topMostControllerForWindow:UIApplication.sharedApplication.windows.firstObject];

    if (viewController != nil) {
        return viewController.supportedInterfaceOrientations;
    }

    return super.supportedInterfaceOrientations;
}

/// The view controller should inherit the auto rotate settings of the view controller over which the lock screen is being presented.
/// HAX: https://github.com/smartdevicelink/sdl_ios/issues/1250
- (BOOL)shouldAutorotate {
    UIViewController *viewController = [self sdl_topMostControllerForWindow:UIApplication.sharedApplication.windows.firstObject];

    if (viewController != nil) {
        return viewController.shouldAutorotate;
    }

    return super.shouldAutorotate;
}

/// Gets the topmost view controller in a window
/// @param window The window
- (UIViewController *)sdl_topMostControllerForWindow:(UIWindow *)window {
    UIViewController *topController = window.rootViewController;

    while (topController.presentedViewController != nil) {
        topController = topController.presentedViewController;
    }

    return topController;
}

@end

NS_ASSUME_NONNULL_END
