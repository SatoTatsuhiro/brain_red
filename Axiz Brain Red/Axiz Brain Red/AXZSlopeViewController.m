#import "AXZSlopeViewController.h"
#import "AXZSettingViewController.h"
#import "AXZWebViewController.h"
#import "AXZAsset.h"
#import "UIView+AXZUI.h"
#import "UILabel+AXZUI.h"

@interface AXZSlopeViewController ()
- (IBAction)resetButton:(id)sender;
- (IBAction)userAction:(id)sender;
- (IBAction)infoButtonAction:(id)sender;
- (IBAction)backToMainButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *slopeLabel;
@property (strong,nonatomic) CMAttitude *currentAttitude;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) UIImageView *SlopeRider;
@property (nonatomic) AXZAsset *asset;

@end

float ReviseSlope;

@implementation AXZSlopeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startSlopeRider];
    ReviseSlope = 0;

    self.asset = [AXZAsset new];
    self.backgroundImageView = self.asset.slopeInterfaceImageView;
    self.slopeLabel.translatesAutoresizingMaskIntoConstraints = YES;
    self.slopeLabel.frame = [UIView slopeLabelRect];
    self.slopeLabel.font = [UILabel slopeLabelFont];

    self.SlopeRider = self.asset.slopeRiderImageView;
    self.SlopeRider.translatesAutoresizingMaskIntoConstraints = YES;
    self.SlopeRider.frame = [UIView slopeRiderImageViewRect];
    [self.view addSubview:self.SlopeRider];
    
    [self.view bringSubviewToFront:self.slopeLabel];
}

- (void)startSlopeRider
{
    self.SlopeRiderManager = [[CMMotionManager alloc] init];
    self.SlopeRiderManager.deviceMotionUpdateInterval = 1.0/60.0;

    NSOperationQueue * queue = [NSOperationQueue mainQueue];
    [self.SlopeRiderManager startDeviceMotionUpdatesToQueue:queue withHandler:^(CMDeviceMotion *motion, NSError *error)
    {
        self.currentAttitude = motion.attitude;

        float Slope = self.currentAttitude.roll - ReviseSlope;
        int SlopeDgree = round(180 * (self.currentAttitude.roll - ReviseSlope) / M_PI);

        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.1];
        _SlopeRider.transform = CGAffineTransformMakeRotation(-Slope);
        [UIView commitAnimations];

        if (SlopeDgree >= 45 || SlopeDgree <= -45) {
            self.slopeLabel.textColor = [UIColor redColor];
        } else {
            self.slopeLabel.textColor = [UIColor whiteColor];
        }
        
        if (SlopeDgree > 90) {
            SlopeDgree = 90;
        } else if (SlopeDgree < -90) {
            SlopeDgree = -90;
        }
        
        if (SlopeDgree > 0) {
            self.slopeLabel.text = [NSString stringWithFormat:@"+%d°",SlopeDgree];
        } else if (SlopeDgree < 0) {
            self.slopeLabel.text = [NSString stringWithFormat:@"%d°",SlopeDgree];
        } else {
            self.slopeLabel.text = [NSString stringWithFormat:@"0°"];
        }
    }];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)resetButton:(id)sender
{
    ReviseSlope = self.currentAttitude.roll;
}

- (IBAction)userAction:(id)sender
{
    AXZSettingViewController *settingViewCtl = [[AXZSettingViewController alloc] init];
    [self presentViewController:settingViewCtl animated:YES completion:nil];
}

- (IBAction)infoButtonAction:(id)sender
{
    AXZWebViewController* webViewCtl = [[AXZWebViewController alloc]init];
    [self presentViewController:webViewCtl animated:YES completion:nil];
}

- (IBAction)backToMainButton:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)arrowLeftAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft;
}
@end

