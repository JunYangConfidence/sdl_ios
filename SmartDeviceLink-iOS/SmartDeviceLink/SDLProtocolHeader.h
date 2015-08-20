//  SDLProtocolHeader.h
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(UInt8, SDLFrameType) {
    SDLFrameType_Control = 0,
    SDLFrameType_Single = 1,
    SDLFrameType_First = 2,
    SDLFrameType_Consecutive = 3
};

typedef NS_ENUM(UInt8, SDLServiceType) {
    SDLServiceType_Control = 0,
    SDLServiceType_RPC = 7,
    SDLServiceType_Audio = 10,
    SDLServiceType_Video = 11,
    SDLServiceType_BulkData = 15
};

typedef NS_ENUM(UInt8, SDLFrameData) {
    SDLFrameData_Heartbeat = 0,
    SDLFrameData_HeartbeatACK = 0xFF,
    SDLFrameData_StartSession = 1,
    SDLFrameData_StartSessionACK = 2,
    SDLFrameData_StartSessionNACK = 3,
    SDLFrameData_EndSession = 4,
    SDLFrameData_SingleFrame = 0,
    SDLFrameData_FirstFrame = 0,
    SDLFrameData_ConsecutiveLastFrame = 0
};


@interface SDLProtocolHeader : NSObject <NSCopying> {
    UInt8 _version;
    NSUInteger _size;
}

@property (assign, readonly) UInt8 version;
@property (assign, readonly) NSUInteger size;
@property (assign) BOOL compressed;
@property (assign) SDLFrameType frameType;
@property (assign) SDLServiceType serviceType;
@property (assign) SDLFrameData frameData;
@property (assign) UInt8 sessionID;
@property (assign) UInt32 bytesInPayload;

- (instancetype)init;
- (NSData *)data;
- (void)parse:(NSData *)data;
- (NSString *)description;
+ (SDLProtocolHeader *)headerForVersion:(UInt8)version;

@end
