//
//  ViewController.m
//  TAPromotee
//
//  Created by Jan on 24/04/15.
//  Copyright (c) 2015 Tequila Apps. All rights reserved.
//

#import "ViewController.h"
#import "TAPromotee.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{

    [super viewDidLoad];
}

#pragma mark - Actions

-(IBAction) showAddButtonAction
{

    // 361309726  Pages
    // 284882215  Facebook
    // 822702909  Daylight
    [TAPromotee showFromViewController:self appId:822702909 caption:@"Sun clock in your pocket" completion:^(TAPromoteeUserAction userAction) {
        [self handleUserAction:userAction];
    }];

}

- (IBAction)showWithCustomBackgroundAction
{
    [TAPromotee showFromViewController:self appId:937151343 caption:@"Your Battlefield soldier's companion" backgroundImage:[UIImage imageNamed:@"sample-app-background"] completion:^(TAPromoteeUserAction userAction) {
        [self handleUserAction:userAction];
    }];
}

#pragma mark - Helper
-(void) handleUserAction:(TAPromoteeUserAction) userAction
{
    switch (userAction) {
        case TAPromoteeUserActionDidClose:
            // The user just closed the add
            NSLog(@"User did click close");
            break;
        case TAPromoteeUserActionDidInstall:
            // The user did click on the Install button so here you can for example disable the ad for the future
            NSLog(@"User did click install");
            break;
    }
}






@end
