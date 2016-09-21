//  SDLImageFieldName.h
//


#import "SDLEnum.h"

/** The name that identifies the filed.
 *
 *
 * @since SmartDeviceLink 3.0
 *
 */
typedef SDLEnum SDLImageFieldName NS_EXTENSIBLE_STRING_ENUM;

/** The image field for SoftButton
 *
 */
extern SDLImageFieldName const SDLImageFieldNameSoftButtonImage;

/** The first image field for Choice.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameChoiceImage;

/** The scondary image field for Choice.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameChoiceSecondaryImage;

/** The image field for vrHelpItem.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameVrHelpItem;

/** The image field for Turn.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameTurnIcon;

/** The image field for the menu icon in SetGlobalProperties.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameMenuIcon;

/** The image filed for AddCommand.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameCmdIcon;

/** The iamage field for the app icon ( set by setAppIcon).
 *
 */
extern SDLImageFieldName const SDLImageFieldNameAppIcon;

/** The image filed for Show.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameGraphic;

/** The primary image field for ShowConstant TBT.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameShowConstantTbtIcon;

/** The secondary image field for ShowConstant TBT.
 *
 */
extern SDLImageFieldName const SDLImageFieldNameShowConstantTbtNextTurnIcon;

/**
 * The optional image of a destination / location
 * @since SDL 4.0
 */
extern SDLImageFieldName const SDLImageFieldNameLocationImage;
