//  SDLVehicleDataEventStatus.h
//


#import "SDLEnum.h"

/**
 * Reflects the status of a vehicle data event; e.g. a seat belt event status.
 *
 * @since SDL 2.0
 */
typedef SDLEnum SDLVehicleDataEventStatus NS_EXTENSIBLE_STRING_ENUM;

extern SDLVehicleDataEventStatus const SDLVehicleDataEventStatusNoEvent;

extern SDLVehicleDataEventStatus const SDLVehicleDataEventStatusNo;

extern SDLVehicleDataEventStatus const SDLVehicleDataEventStatusYes;

/**
 * @abstract Vehicle data event is not supported
 */
extern SDLVehicleDataEventStatus const SDLVehicleDataEventStatusNotSupported;

/**
 * @abstract The SDLVehicleDataEventStatus instance with value of *FAULT*
 */
extern SDLVehicleDataEventStatus const SDLVehicleDataEventStatusFault;
