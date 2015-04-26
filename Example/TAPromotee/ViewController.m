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


- (void)viewDidLoad
{
    [TAPromotee setDelegate:self];
    [super viewDidLoad];
}

#pragma mark - Actions

-(IBAction) showAddButtonAction
{

    [TAPromotee showFromViewController:self
                                 appId:822702909
                               caption:@"Sun clock in your pocket"];

}

-(IBAction) showWithCustomBackgroundAction
{

[TAPromotee showFromViewController:self
                             appId:937151343
                           caption:@"Your Battlefield soldier's companion"
                   backgroundImage:[UIImage imageNamed:@"sample-app-background"]];
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
