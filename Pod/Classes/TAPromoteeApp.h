//
// Created by Jan on 24/04/15.
//

#import <UIKit/UIKit.h>


@interface TAPromoteeApp : NSObject

@property (nonatomic, assign) NSInteger appStoreId; // App id from app store
@property (nonatomic, strong) NSString *name; // App name
@property (nonatomic, strong) NSString *caption; // App short caption phrase
@property (nonatomic, strong) UIImage *iconImage; // App icon
@property (nonatomic, strong) UIImage *backgroundImage; // Background image that covers the half of the screen

// StoreKit
@property (nonatomic, strong) NSString *affiliateToken; // Passed to StoreKit as the SKStoreProductParameterAffiliateToken parameter
@property (nonatomic, strong) NSString *campaignToken; // App short caption phrase

- (instancetype)initWithAppStoreId:(NSInteger)appStoreId name:(NSString *)name caption:(NSString *)caption iconImage:(UIImage *)iconImage backgroundImage:(UIImage *)backgroundImage;

+ (instancetype)appWithAppStoreId:(NSInteger)appStoreId name:(NSString *)name caption:(NSString *)caption iconImage:(UIImage *)iconImage backgroundImage:(UIImage *)backgroundImage;



@end