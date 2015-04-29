//
// Created by Jan on 24/04/15.
//

#import <Foundation/Foundation.h>

typedef void (^TAAppInfoCompletionBlock)(NSDictionary *response, NSError *error);

@interface TAITunesClient : NSObject

/**
 *  Fetches the json information about a specified iOS App from iTunes. See
 *  https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html#searching
 *
 *  @param appId      The App Store app id
 *  @param country    The two-letter country code for the store you want to search.
 *  @param completion The completion block that contains the json dictionary of the app
 */
- (void)fetchInfoForAppId:(NSInteger)appId country:(NSString *)country completion:(TAAppInfoCompletionBlock)completion;

@end