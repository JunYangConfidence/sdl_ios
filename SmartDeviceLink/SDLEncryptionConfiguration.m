//
//  SDLEncryptionConfiguration.m
//  SmartDeviceLink
//
//  Created by standa1 on 6/17/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLEncryptionConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLEncryptionConfiguration

+ (instancetype)defaultConfiguration {
    return [[self.class alloc] initWithSecurityManagers:nil];
}

- (instancetype)initWithSecurityManagers:(nullable NSArray<Class<SDLSecurityType>> *)securityManagers {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _securityManagers = securityManagers;
    
    return self;
}

#pragma mark - NSCopying

- (id)copyWithZone:(nullable NSZone *)zone {
    SDLEncryptionConfiguration *newConfig = [[self.class allocWithZone:zone] init];
    newConfig.securityManagers = self.securityManagers;
    
    return newConfig;
}


@end

NS_ASSUME_NONNULL_END
