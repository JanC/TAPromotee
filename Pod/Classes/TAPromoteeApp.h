//
// Created by Jan on 24/04/15.
//

#import <UIKit/UIKit.h>

typedef void (^TAPromoteeAppCompletionBlock)(NSError *error);

@interface TAPromoteeApp : NSObject

@property (nonatomic, assign) NSInteger appStoreId; // App id from app store
@property (nonatomic, strong) NSString *caption; // App short caption phrase
@property (nonatomic, strong) UIImage *backgroundImage; // Background image that covers the half of the screen

// fetched from iTunes API
@property (nonatomic, strong, readonly) NSString *name; // App name
@property (nonatomic, strong, readonly) NSString *price;
@property (nonatomic, strong, readonly) UIImage *iconImage; // App icon

// StoreKit
@property (nonatomic, strong) NSString *affiliateToken; // Passed to StoreKit as the SKStoreProductParameterAffiliateToken parameter
@property (nonatomic, strong) NSString *campaignToken; // App short caption phrase

- (instancetype)initWithAppStoreId:(NSInteger)appStoreId caption:(NSString *)caption backgroundImage:(UIImage *)backgroundImage;

+ (instancetype)appWithAppStoreId:(NSInteger)appStoreId caption:(NSString *)caption backgroundImage:(UIImage *)backgroundImage;


-(void) fetchAppStoreResourcesWithCompletion:(TAPromoteeAppCompletionBlock) completion;


@end