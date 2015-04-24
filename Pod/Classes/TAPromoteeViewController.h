//
// Created by Jan on 24/04/15.
// Copyright (c) 2015 SponsorPay. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TAPromoteeViewController;

@protocol TAPromoteeViewControllerDelegate <NSObject>

-(void) promoteeViewControllerDidClickInstall:(TAPromoteeViewController *) viewController;
-(void) promoteeViewControllerDidClickClose:(TAPromoteeViewController *) viewController;

@end

@interface TAPromoteeViewController : UIViewController

@property (nonatomic, strong) NSString *appStoreId; // App id from app store
@property (nonatomic, strong) NSString *name; // App id from app store
@property (nonatomic, strong) NSString *caption; // App id from app store
@property (nonatomic, strong) UIImage *backgroundImage;
@property (nonatomic, strong) UIImage *iconImage;

@property (nonatomic, weak) id<TAPromoteeViewControllerDelegate> delegate;

- (instancetype)initWithAppStoreId:(NSString *)appStoreId name:(NSString *)name caption:(NSString *)caption backgroundImage:(UIImage *)backgroundImage iconImage:(UIImage *)iconImage;


@end