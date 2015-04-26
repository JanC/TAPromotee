//
//  ViewController.m
//  TAPromotee
//
//  Created by Jan on 24/04/15.
//  Copyright (c) 2015 Tequila Apps. All rights reserved.
//

#import "ViewController.h"
#import "TAPromotee.h"
#import "TAPromoteeViewController.h"

@interface ViewController () <TAPromoteeDelegate>

@end

@implementation ViewController

#pragma mark - Actions

-(IBAction) showAddButtonAction
{

    [TAPromotee setDelegate:self];

    [TAPromotee showFromViewController:self
                                 appId:937151343
                               caption:@"Your Battlefield soldier's companion"
                        backgrounImage:[UIImage imageNamed:@"sample-app-background"]];

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
