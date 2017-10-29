//
//  TAStoreProductViewController.m
//  Pods
//
//  Created by Rukshan Marapana on 10/29/17.
//
//

#import "TAStoreProductViewController.h"

@interface TAStoreProductViewController ()

@end

@implementation TAStoreProductViewController

- (BOOL)shouldAutorotate {
    UIInterfaceOrientationMask applicationSupportedOrientations = [[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:[[UIApplication sharedApplication] keyWindow]];
    UIInterfaceOrientationMask viewControllerSupportedOrientations = [self supportedInterfaceOrientations];
    return viewControllerSupportedOrientations & applicationSupportedOrientations;
}

@end
