//
//  SlopeViewController.m
//  Axiz Brain Red
//
//  Created by 左藤樹洋 on 2014/08/05.
//  Copyright (c) 2014年 Tatsuhiro Sato. All rights reserved.
//

#import "SlopeViewController.h"
#import "settingViewController.h"
#import "webViewController.h"

@interface SlopeViewController ()
- (IBAction)resetButton:(id)sender;
- (IBAction)userAction:(id)sender;
- (IBAction)infoButtonAction:(id)sender;
- (IBAction)backToMainButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *slopeLabel;
@property (strong,nonatomic) CMAttitude *currentAttitude;


@end
float ReviseSlope;

@implementation SlopeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self startSlopeRider];
	// Do any additional setup after loading the view.
    ReviseSlope = 0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startSlopeRider
{
    self.SlopeRiderManager = [[CMMotionManager alloc] init];
    self.SlopeRiderManager.deviceMotionUpdateInterval = 1.0/60.0; //0.16秒間隔で更新
    
    NSOperationQueue * queue = [NSOperationQueue mainQueue];
    [self.SlopeRiderManager startDeviceMotionUpdatesToQueue:queue withHandler:^(CMDeviceMotion *motion, NSError *error) {
        
        self.currentAttitude = motion.attitude;
        
        //角度の基準を決める（？）
        //[currentAttitude multiplyByInverseOfAttitude:self.motionManager.deviceMotion.attitude];
        
        //数値の取得と丸め
        float Slope = self.currentAttitude.roll - ReviseSlope;
        int SlopeDgree = round(180 * (self.currentAttitude.roll - ReviseSlope) / M_PI);
        
        
        //角度アニメーション
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.1];
        _SlopeRider.transform = CGAffineTransformMakeRotation(-Slope);
        [UIView commitAnimations];
        self.slopeLabel.text = [NSString stringWithFormat:@"%d°",SlopeDgree];
        
        
    }];
    
}


- (UIStatusBarStyle)preferredStatusBarStyle {
    //文字を白くする
    return UIStatusBarStyleLightContent;
}
- (IBAction)resetButton:(id)sender {
    ReviseSlope = self.currentAttitude.roll;
    
}

- (IBAction)userAction:(id)sender {
    settingViewController *settingViewCtl = [[settingViewController alloc] init];
    [self presentViewController:settingViewCtl animated:YES completion:nil];

    
}

- (IBAction)infoButtonAction:(id)sender {
    webViewController* webViewCtl = [[webViewController alloc]init];
    [self presentViewController:webViewCtl animated:YES completion:nil];

}

- (IBAction)backToMainButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end

