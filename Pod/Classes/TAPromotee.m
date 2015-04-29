//
// Created by Jan on 26/04/15.
//

#import "TAPromotee.h"
#import "TAPromoteeApp.h"
#import "TAPromoteeViewController.h"


@implementation TAPromotee {

}



+ (void)showFromViewController:(UIViewController *)viewController appId:(NSInteger)appId caption:(NSString *)caption completion:(TAPromoteeCompletion)completion
{
    [self showFromViewController:viewController appId:appId caption:caption backgroundImage:nil completion:completion];
}

+ (void)showFromViewController:(UIViewController *)viewController appId:(NSInteger)appId caption:(NSString *)caption backgroundImage:(UIImage *)backgroundImage completion:(TAPromoteeCompletion)completion
{
    TAPromoteeApp *promoteeApp = [TAPromoteeApp appWithAppStoreId:appId
                                                          caption:caption
                                                  backgroundImage:backgroundImage];

    [promoteeApp fetchAppStoreResourcesWithCompletion:^(NSError *error) {

        [[NSOperationQueue mainQueue] addOperationWithBlock:^{

            TAPromoteeViewController *promoteeViewController = [[TAPromoteeViewController alloc] initWithApp:promoteeApp];
            promoteeViewController.completion = ^(TAPromoteeUserAction userAction) {
                [viewController dismissViewControllerAnimated:YES completion:^{
                    if(completion) {
                        completion(userAction);
                    }
                }];
            };
            [viewController presentViewController:promoteeViewController animated:YES completion:^{ }];
        }];
    }];
}
@end