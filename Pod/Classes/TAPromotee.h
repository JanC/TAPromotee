//
// Created by Jan Chaloupecky on 26/04/15.
//

#import <UIKit/UIKit.h>



typedef NS_ENUM(NSUInteger , TAPromoteeUserAction) {
    TAPromoteeUserActionDidClose,  // the user did click on the close button
    TAPromoteeUserActionDidInstall, // the user did click on the install button
};

typedef void (^TAPromoteeCompletion)(TAPromoteeUserAction userAction);

@interface TAPromotee : NSObject


/**
 *  This method fetches the app info via tha iTunes API and displays a interstitial view controller. The user can choose
 *  to close it or to install the app. If the user taps on install, a SKStoreProductViewController is presented.
 *  In both cases, the presented controller is dismissed and the completion block called
 *
 *  @param viewController  The view controller from which the interstitial ad will be displayed from
 *  @param appId           The App Store app id of the app
 *  @param caption         A short advert description dysplayed under the app icon
 *  @param backgroundImage The custom background image that takes the size of the entire screen. The bottom half is blurred
 *  @param completion      The completion block called when the user closes or installs the app.
 */
+ (void)showFromViewController:(UIViewController *)viewController
                         appId:(NSInteger)appId
                       caption:(NSString *)caption
               backgroundImage:(UIImage *)backgroundImage
                    completion:(TAPromoteeCompletion)completion;

/**
 *  This method fetches the app info via tha iTunes API and displays a interstitial view controller. The user can choose
 *  to close it or to install the app. If the user taps on install, a SKStoreProductViewController is presented.
 *  In both cases, the presented controller is dismissed and the completion block called
 *
 *  @param viewController  The view controller from which the interstitial ad will be displayed from
 *  @param appId           The App Store app id of the app
 *  @param caption         A short advert description dysplayed under the app icon
 *  @param completion      The completion block called when the user closes or installs the app.
 */
+ (void)showFromViewController:(UIViewController *)viewController
                         appId:(NSInteger)appId
                       caption:(NSString *)caption
                    completion:(TAPromoteeCompletion)completion;

@end