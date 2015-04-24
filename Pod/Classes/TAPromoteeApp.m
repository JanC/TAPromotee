//
// Created by Jan on 24/04/15.
//

#import "TAPromoteeApp.h"


@implementation TAPromoteeApp {

}

- (instancetype)initWithAppStoreId:(NSString *)appStoreId name:(NSString *)name caption:(NSString *)caption iconImage:(UIImage *)iconImage backgroundImage:(UIImage *)backgroundImage
{
    self = [super init];
    if (self) {
        self.appStoreId = appStoreId;
        self.name = name;
        self.caption = caption;
        self.iconImage = iconImage;
        self.backgroundImage = backgroundImage;
    }

    return self;
}

+ (instancetype)appWithAppStoreId:(NSString *)appStoreId name:(NSString *)name caption:(NSString *)caption iconImage:(UIImage *)iconImage backgroundImage:(UIImage *)backgroundImage
{
    return [[self alloc] initWithAppStoreId:appStoreId name:name caption:caption iconImage:iconImage backgroundImage:backgroundImage];
}

@end