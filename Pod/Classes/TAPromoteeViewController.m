//
// Created by Jan on 24/04/15.
//

#import "TAPromoteeViewController.h"
#import "TAPromoteeApp.h"
#import "TACloseButton.h"

@import StoreKit;


@interface TAPromoteeViewController () <SKStoreProductViewControllerDelegate>

@property(nonatomic, strong) UIImageView *backgroundImageView;
@property(nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) UIButton *closeButton;
@property (nonatomic, strong) UIButton *installButton;

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, strong) UILabel *captionLabel;

@property (nonatomic, strong) TAPromoteeApp *promoteeApp;

@end

@implementation TAPromoteeViewController {

}

- (instancetype)initWithApp:(TAPromoteeApp *)promoteeApp
{
    self = [super init];
    if (self) {
        self.promoteeApp = promoteeApp;
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.backgroundImageView = [[UIImageView alloc] initWithImage: self.promoteeApp.backgroundImage];

    self.iconImageView = [[UIImageView alloc] initWithImage: self.promoteeApp.iconImage];
    self.iconImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.iconImageView.layer.borderWidth = 2.0f;
    self.iconImageView.layer.masksToBounds = YES;



    self.closeButton = [[TACloseButton alloc] init];
    [self.closeButton addTarget:self action:@selector(closeButtonAction:) forControlEvents:UIControlEventTouchUpInside];

    self.installButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.installButton setTitle:@"Install" forState:UIControlStateNormal];
    [self.installButton addTarget:self action:@selector(installButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    self.installButton.backgroundColor = [UIColor colorWithRed:0.3 green:0.85 blue:0.39 alpha:1];

    [self.installButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.installButton.titleLabel.font = [UIFont boldSystemFontOfSize:17];
    self.installButton.layer.cornerRadius = 2;


    self.nameLabel = [[UILabel alloc] init];
    self.nameLabel.text = self.promoteeApp.name;
    self.nameLabel.font = [UIFont boldSystemFontOfSize:22];

    self.priceLabel = [[UILabel alloc] init];
    self.priceLabel.text = @"FREE - available on the App Store";
    self.priceLabel.font = [UIFont systemFontOfSize:10];

    self.captionLabel = [[UILabel alloc] init];
    self.captionLabel.text = self.promoteeApp.caption;
    self.captionLabel.font = [UIFont systemFontOfSize:17];



    [self.view addSubview:self.backgroundImageView];
    [self.view addSubview:self.iconImageView];
    [self.view addSubview:self.closeButton];
    [self.view addSubview:self.installButton];
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.captionLabel];
    [self.view addSubview:self.priceLabel];

    self.view.backgroundColor = [UIColor whiteColor];

    // Auto Layout
    self.backgroundImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.closeButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.installButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.captionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.priceLabel.translatesAutoresizingMaskIntoConstraints = NO;


    NSDictionary *views = NSDictionaryOfVariableBindings(_closeButton, _installButton, _backgroundImageView, _captionLabel, _priceLabel, _nameLabel, _iconImageView);
    NSDictionary *metrics = @{
            @"TACloseButtonSize" : @60,
            @"TAInstallButtonWidth" : @100,
            @"TAVerticalSpacing" : @20
    };

    // close button top right
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[_closeButton(TACloseButtonSize)]|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_closeButton(TACloseButtonSize)]" options:0 metrics:metrics views:views]];

    // background image fill half of screen
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_backgroundImageView]|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_backgroundImageView]" options:0 metrics:metrics views:views]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.backgroundImageView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.5 constant:0]];

    // install button bottom center
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.installButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0 constant:0]];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_installButton]-(TAVerticalSpacing)-|" options:0 metrics:metrics views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[_installButton(TAInstallButtonWidth)]" options:0 metrics:metrics views:views]];


    // app icon center
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.iconImageView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0 constant:0]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.iconImageView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0 constant:0]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.iconImageView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.25 constant:0]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.iconImageView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.25 constant:0]];

    // labels centered X and aligned under icon

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.nameLabel
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0 constant:0]];


    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.priceLabel
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0 constant:0]];

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.captionLabel
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0 constant:0]];



    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_iconImageView]-[_nameLabel]-[_priceLabel]-(TAVerticalSpacing)-[_captionLabel]" options:0 metrics:metrics views:views]];




}

- (void)viewDidLayoutSubviews
{
    self.iconImageView.layer.cornerRadius = CGRectGetWidth(self.iconImageView.frame)/8;
    [super viewDidLayoutSubviews];
}


#pragma mark - Actions

- (void)closeButtonAction:(id)sender
{
    if(self.delegate) {
        [self.delegate promoteeViewControllerDidClose:self];
    }
}

- (void)installButtonAction:(id)sender
{

    [self openAppWithStoreKit];
}

#pragma mark - Private

-(void) openAppWithStoreKit
{

    [self.installButton setTitle:@"Opening..." forState:UIControlStateNormal];
    self.installButton.enabled = NO;

    SKStoreProductViewController* storeViewController = [[SKStoreProductViewController alloc] init];
    storeViewController.delegate = self;
    NSDictionary *parameters = @{
            SKStoreProductParameterITunesItemIdentifier : @(self.promoteeApp.appStoreId),
            SKStoreProductParameterAffiliateToken : self.promoteeApp.affiliateToken,
            SKStoreProductParameterCampaignToken : self.promoteeApp.campaignToken
    };
    [storeViewController loadProductWithParameters:parameters completionBlock:^(BOOL result, NSError *error) {

        [self.installButton setTitle:@"Install" forState:UIControlStateNormal];
        self.installButton.enabled = YES;

        [self presentViewController:storeViewController animated:YES completion:^{

        }];
    }];
}

- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController
{

   [self dismissViewControllerAnimated:NO completion:^{
       if(self.delegate) {
           [self.delegate promoteeViewControllerDidClose:self];
       }
   }];
}


#pragma mark - Overrides

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)dealloc
{
    NSLog(@"dealloc");
}


@end