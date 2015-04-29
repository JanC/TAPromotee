//
// Created by Jan on 26/04/15.
//

#import <UIKit/UIKit.h>



typedef NS_ENUM(NSUInteger , TAPromoteeUserAction) {
    TAPromoteeUserActionDidClose,  // the user did click on the close button
    TAPromoteeUserActionDidInstall, // the user did click on the install button
};

typedef void (^TAPromoteeCompletion)(TAPromoteeUserAction userAction);

@interface TAPromotee : NSObject


+ (void)showFromViewController:(UIViewController *)viewController
                         appId:(NSInteger)appId
                       caption:(NSString *)caption
               backgroundImage:(UIImage *)backgroundImage
                    completion:(TAPromoteeCompletion)completion;

+ (void)showFromViewController:(UIViewController *)viewController
                         appId:(NSInteger)appId
                       caption:(NSString *)caption
                    completion:(TAPromoteeCompletion)completion;

@end