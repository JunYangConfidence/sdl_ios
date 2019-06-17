//
//  SDLEncryptionConfiguration.h
//  SmartDeviceLink
//
//  Created by standa1 on 6/17/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SDLSecurityType;
@protocol SDLStreamingMediaManagerDataSource;

NS_ASSUME_NONNULL_BEGIN

@interface SDLEncryptionConfiguration : NSObject

/**
 *  Set security managers which could be used. This is primarily used perhaps encrypt traffic data.
 */
@property (copy, nonatomic, nullable) NSArray<Class<SDLSecurityType>> *securityManagers;

/**
 Creates a unencrypted configuration.
 
 @return The configuration
 */
+ (instancetype)unencryptedConfiguration;

/**
 Create a secure configuration for each of the security managers provided.
 
 @param securityManagers The security managers to be used.
 @return The configuration
 */
- (instancetype)initWithSecurityManagers:(nullable NSArray<Class<SDLSecurityType>> *)securityManagers;

@end

NS_ASSUME_NONNULL_END
