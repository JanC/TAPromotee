//
// Created by Jan on 24/04/15.
//

#import "TAITunesClient.h"

NSString *const TAITunesAPI = @"https://itunes.apple.com";


@implementation TAITunesClient {

}

/**
* @param country: The two-letter country code for the store you want to search
*/
- (void)fetchInfoForAppId:(NSInteger)appId country:(NSString *)country completion:(TAAppInfoCompletionBlock)completion
{
    // https://itunes.apple.com/lookup?id=284910350
    NSString *url = [NSString stringWithFormat:@"%@/lookup?id=%@&country=%@", TAITunesAPI, @(appId), country ? country: @"us"];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:url] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if(error) {
            completion(nil, error);
            return;
        }

        id jsonData = [NSJSONSerialization JSONObjectWithData:data
                                                      options:0
                                                        error:&error];

        NSDictionary *appInfo = [jsonData[@"results"] firstObject];
        completion(appInfo, nil);


    }] resume];
}
@end