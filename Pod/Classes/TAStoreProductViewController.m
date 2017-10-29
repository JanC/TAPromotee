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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    UIInterfaceOrientationMask applicationSupportedOrientations = [[UIApplication sharedApplication] supportedInterfaceOrientationsForWindow:[[UIApplication sharedApplication] keyWindow]];
    UIInterfaceOrientationMask viewControllerSupportedOrientations = [self supportedInterfaceOrientations];
    return viewControllerSupportedOrientations & applicationSupportedOrientations;
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
