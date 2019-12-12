//
//  PasswordViewController.m
//  SmartDeviceLink
//
//  Created by Nicole on 12/12/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "PasswordViewController.h"

@interface PasswordViewController ()

@end

@implementation PasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.backgroundColor = UIColor.redColor;

	UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(60, 200, 350, 80)];
	lable.text = NSLocalizedString(@"Password window. Should not show", @"comment");
	[self.view addSubview:lable];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
