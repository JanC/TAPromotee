//
// Created by Jan on 26/04/15.
//

#import <UIKit/UIKit.h>

#import "TAPromoteeViewController.h"


@interface TAPromotee : NSObject

@property (nonatomic, weak) id<TAPromoteeDelegate> delegate;

+ (void)setDelegate:(id<TAPromoteeDelegate>)delegate;

+ (void)showFromViewController:(UIViewController *)viewController appId:(NSInteger)appId caption:(NSString *)caption backgrounImage:(UIImage *)backgroundImage;

+ (void)showFromViewController:(UIViewController *)viewController appId:(NSInteger)appId caption:(NSString *)caption;

@end