#import "AXZHomeViewController.h"
#import "AXZMeterView.h"
#import "AXZAsset.h"
#import <CoreMotion/CoreMotion.h>
#import <CoreLocation/CoreLocation.h>

#define PAGE_COUNT 5

@interface AXZHomeViewController () <AXZMeterViewDelegate>

@property (nonatomic) AXZAsset *asset;
@property (nonatomic) NSMutableArray *meterViews;
@property (nonatomic) UIScrollView *scrollView;

@property (nonatomic) float reviseBank;
@property (nonatomic) float reviseSlope;
@property (nonatomic) CMAttitude *currentAttitude;

@end

@implementation AXZHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self _initialize];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self startGetAngle];
}
//=============================================================
#pragma initialize
//=============================================================

- (void)_initialize
{
    self.asset = [[AXZAsset alloc] init];
    [self _prepareMeterViews];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.bounces = NO;
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * PAGE_COUNT);
    [self.view addSubview:self.scrollView];
    
    for (AXZMeterView *meterView in self.meterViews) {
        [self.scrollView addSubview:meterView];
    }
}

- (void)_prepareMeterViews
{
    self.meterViews = [[NSMutableArray alloc] init];
    for (int i = 0; i < PAGE_COUNT; i++) {
        UINib *nib = [UINib nibWithNibName:@"AXZMeterView" bundle:nil];
        AXZMeterView *meterView = [nib instantiateWithOwner:self options:nil][0];
        meterView.delegate = self;
        meterView.backgroundImageView.image = self.asset.backgroundImages[i];
        meterView.innerCircleImageView.image = self.asset.innerCircleImages[i];
        [meterView.kmButton setImage:self.asset.kmButtonImages[i] forState:UIControlStateNormal];
        [meterView.kmButton setImage:self.asset.kmButtonHoverImages[i] forState:UIControlStateHighlighted];
        
        meterView.frame = CGRectMake(0, self.view.frame.size.height * i, self.view.frame.size.width, self.view.frame.size.height);
        [self.meterViews addObject:meterView];
    }
}

//=============================================================
#pragma AXZMeterViewDelegate
//=============================================================

- (void)resetButtonDidTapped:(id)sender
{
    self.reviseBank = self.currentAttitude.pitch;
    self.reviseSlope = self.currentAttitude.roll;
}

- (void)infoButtonDidTapped:(id)sender
{
    
}

- (void)userButtonDidtapped:(id)sender
{
    
}

- (void)homeButtonDidtapped:(id)sender
{
    CGPoint offset;
    offset.x = 0;
    offset.y = 0;
    
    [self.scrollView setContentOffset:offset animated:YES];
}

//=============================================================
#pragma Angle
//=============================================================

- (void)startGetAngle
{
    
}

//=============================================================
#pragma Error
//=============================================================

- (void)showError
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"モーションエラー" message:@"モーションの取得に失敗しました." preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"はい" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
