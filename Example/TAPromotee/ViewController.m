//
//  ViewController.m
//  TAPromotee
//
//  Created by Jan on 24/04/15.
//  Copyright (c) 2015 Tequila Apps. All rights reserved.
//

#import "ViewController.h"
#import "TAPromoteeViewController.h"
#import "TAPromoteeApp.h"

@interface ViewController () <TAPromoteeViewControllerDelegate>

@end

@implementation ViewController

#pragma mark - Actions

-(IBAction) showAddButtonAction
{
    TAPromoteeApp *promoteeApp = [TAPromoteeApp appWithAppStoreId:822702909 //937151343
                                name:@"PStats: Battlefield"
                             caption:@"Your Battlefield soldier's companion"
                           iconImage:[UIImage imageNamed:@"sample-app-icon"]
                     backgroundImage:[UIImage imageNamed:@"sample-app-background"]];

    TAPromoteeViewController *promoteeViewController = [[TAPromoteeViewController alloc] initWithApp:promoteeApp];
    promoteeViewController.delegate = self;


    [self presentViewController:promoteeViewController animated:YES completion:^{

    }];
}

#pragma mark - TAPromoteeViewControllerDelegate

- (void)promoteeViewControllerFinish:(TAPromoteeViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)promoteeViewControllerDidClose:(TAPromoteeViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
