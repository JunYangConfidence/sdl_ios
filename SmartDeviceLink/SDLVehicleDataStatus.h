//  SDLVehicleDataStatus.h
//


#import "SDLEnum.h"

/**
 * Reflects the status of a binary vehicle data item.
 *
 * @since SDL 2.0
 */
typedef SDLEnum SDLVehicleDataStatus NS_EXTENSIBLE_STRING_ENUM;

/**
 * @abstract No data avaliable
 */
extern SDLVehicleDataStatus const SDLVehicleDataStatusNoDataExists;

/**
 * @abstract return SDLVehicleDataStatus: *OFF*
 */
extern SDLVehicleDataStatus const SDLVehicleDataStatusOff;

/**
 * @abstract return SDLVehicleDataStatus: *ON*
 */
extern SDLVehicleDataStatus const SDLVehicleDataStatusOn;
