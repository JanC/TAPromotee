//
// Created by Jan on 26/04/15.
//

#import "TAPromotee.h"
#import "TAPromoteeApp.h"
#import "TAPromoteeViewController.h"


@implementation TAPromotee {

}

+ (instancetype)sharedInstance
{
    static TAPromotee *instance;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        instance = [[TAPromotee alloc] init];
    });
    return instance;
}

+ (void)setDelegate:(id<TAPromoteeDelegate>)delegate
{
    [TAPromotee sharedInstance].delegate = delegate;
}

+ (void)showFromViewController:(UIViewController *)viewController appId:(NSInteger)appId caption:(NSString *)caption
{
    [self showFromViewController:viewController appId:appId caption:caption backgroundImage:nil];
}

+ (void)showFromViewController:(UIViewController *)viewController appId:(NSInteger)appId caption:(NSString *)caption backgroundImage:(UIImage *)backgroundImage
{
    TAPromoteeApp *promoteeApp = [TAPromoteeApp appWithAppStoreId:appId
                                                          caption:caption
                                                  backgroundImage:backgroundImage];

    [promoteeApp fetchAppStoreResourcesWithCompletion:^(NSError *error) {

        [[NSOperationQueue mainQueue] addOperationWithBlock:^{

            TAPromoteeViewController *promoteeViewController = [[TAPromoteeViewController alloc] initWithApp:promoteeApp];
            promoteeViewController.delegate = [TAPromotee sharedInstance].delegate;
            [viewController presentViewController:promoteeViewController animated:YES completion:^{ }];
        }];
    }];
}
@end