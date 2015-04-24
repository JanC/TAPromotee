//
// Created by Jan on 24/04/15.
// Copyright (c) 2015 SponsorPay. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TAPromoteeViewController;
@class TAPromoteeApp;

@protocol TAPromoteeViewControllerDelegate <NSObject>

- (void)promoteeViewControllerFinish:(TAPromoteeViewController *)viewController;
- (void)promoteeViewControllerDidClose:(TAPromoteeViewController *)viewController;

@end

@interface TAPromoteeViewController : UIViewController



@property (nonatomic, weak) id<TAPromoteeViewControllerDelegate> delegate;

- (instancetype)initWithApp:(TAPromoteeApp *)promoteeApp;


@end