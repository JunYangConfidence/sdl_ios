//  SDLImage.m
//

#import "SDLImage.h"

#import "SDLNames.h"


@implementation SDLImage

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (instancetype)initWithDictionary:(NSMutableDictionary *)dict {
    if (self = [super initWithDictionary:dict]) {
    }
    return self;
}

- (void)setValue:(NSString *)value {
    if (value != nil) {
        [store setObject:value forKey:NAMES_value];
    } else {
        [store removeObjectForKey:NAMES_value];
    }
}

- (NSString *)value {
    return [store objectForKey:NAMES_value];
}

- (void)setImageType:(SDLImageType)imageType {
    if (imageType != nil) {
        [store setObject:imageType forKey:NAMES_imageType];
    } else {
        [store removeObjectForKey:NAMES_imageType];
    }
}

- (SDLImageType)imageType {
    NSObject *obj = [store objectForKey:NAMES_imageType];
        return (SDLImageType)obj;
}

@end
