//  SDLKeyboardLayout.h
//


#import "SDLEnum.h"

/** Enumeration listing possible keyboard layouts
 *
 *<b>Since</b> SmartDeviceLink 3.0
 *
 */
typedef SDLEnum SDLKeyboardLayout NS_EXTENSIBLE_STRING_ENUM;

/** QWERTY layout (the name comes from the first six keys<br> appearing on the top left letter row of the keyboard and read from left to right)
 *
 */
extern SDLKeyboardLayout const SDLKeyboardLayoutQwerty;

/** QWERTZ layout (the name comes from the first six keys<br> appearing on the top left letter row of the keyboard and read from left to right)
 *
 */
extern SDLKeyboardLayout const SDLKeyboardLayoutQwertz;

/** AZERTY layout (the name comes from the first six keys<br> appearing on the top left letter row of the keyboard and read from left to right)
 *
 */
extern SDLKeyboardLayout const SDLKeyboardLayoutAzerty;
