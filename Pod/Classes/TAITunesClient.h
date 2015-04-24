//
// Created by Jan on 24/04/15.
//

#import <Foundation/Foundation.h>

typedef void (^TAAppInfoCompletionBlock)(NSDictionary *response, NSError *error);

@interface TAITunesClient : NSObject

-(void) fetchInfoForAppId:(NSInteger) appId completion:(TAAppInfoCompletionBlock) completion;
@end