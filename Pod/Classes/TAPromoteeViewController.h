//
// Created by Jan on 24/04/15.
//

#import <Foundation/Foundation.h>

#import "TAPromotee.h"

@class TAPromoteeViewController;
@class TAPromoteeApp;



@interface TAPromoteeViewController : UIViewController


@property (nonatomic, copy) TAPromoteeCompletion completion;

- (instancetype)initWithApp:(TAPromoteeApp *)promoteeApp;


@end