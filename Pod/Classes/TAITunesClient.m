//
// Created by Jan on 24/04/15.
//

#import "TAITunesClient.h"

NSString *const TAITunesAPI = @"https://itunes.apple.com";


@implementation TAITunesClient {

}

- (void)fetchInfoForAppId:(NSInteger)appId completion:(TAAppInfoCompletionBlock)completion
{
    // https://itunes.apple.com/lookup?id=284910350
    NSString *url = [NSString stringWithFormat:@"%@/lookup?id=%@", TAITunesAPI, @(appId)];
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