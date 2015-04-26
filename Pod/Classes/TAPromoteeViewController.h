//
// Created by Jan on 24/04/15.
//

#import <Foundation/Foundation.h>

@class TAPromoteeViewController;
@class TAPromoteeApp;

@protocol TAPromoteeDelegate <NSObject>

- (void)promoteeViewControllerFinish:(TAPromoteeViewController *)viewController;
- (void)promoteeViewControllerDidClose:(TAPromoteeViewController *)viewController;

@end

@interface TAPromoteeViewController : UIViewController



@property (nonatomic, weak) id<TAPromoteeDelegate> delegate;

- (instancetype)initWithApp:(TAPromoteeApp *)promoteeApp;


@end