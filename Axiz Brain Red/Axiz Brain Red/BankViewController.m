//
//  BankViewController.m
//  Axiz Brain Red
//
//  Created by 左藤樹洋 on 2014/08/05.
//  Copyright (c) 2014年 Tatsuhiro Sato. All rights reserved.
//

#import "BankViewController.h"
#import "webViewController.h"
#import "settingViewController.h"

@interface BankViewController ()
- (IBAction)resetButton:(id)sender;
- (IBAction)backToMainViewAction:(id)sender;
- (IBAction)infoAction:(id)sender;
- (IBAction)userButtonAction:(id)sender;

@property double Bank;
@property (strong, nonatomic) IBOutlet UILabel *bankLabel;
@property (strong,nonatomic)CMAttitude *currentAttitude;
@property (strong, nonatomic) IBOutlet UIImageView *backGraundImage;
@property (strong, nonatomic) IBOutlet UIButton *infoButton;
@property (strong, nonatomic) IBOutlet UIButton *backToMainButton;



@end
float reviseBank;
CGRect windowSize;



@implementation BankViewController

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
    [self startBankRider];
	// Do any additional setup after loading the view.
    reviseBank = 0;
    
    windowSize = [[UIScreen mainScreen]bounds];
    
    if (windowSize.size.height == 480) {
        self.backGraundImage.image = [UIImage imageNamed:@"3,5インチ版のバンクを入れる"]; //TODO
        self.backGraundImage.frame = CGRectMake(0, 0, 480, 320);
        self.backToMainButton.frame = CGRectMake(424,20 , 30, 30);
        self.infoButton.frame = CGRectMake(424, 277, 30, 30);
        
        
        
    } else {
        
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)startBankRider
{
    
    self.BankRiderManager = [[CMMotionManager alloc] init];
    self.BankRiderManager.deviceMotionUpdateInterval = 1.0/60.0; //0.16秒間隔で更新
    
    NSOperationQueue * queue = [NSOperationQueue mainQueue];
    [self.BankRiderManager startDeviceMotionUpdatesToQueue:queue withHandler:^(CMDeviceMotion *motion, NSError *error) {
        
        self.currentAttitude = motion.attitude;
        
        //角度の基準を決める（？）
        //[currentAttitude multiplyByInverseOfAttitude:self.BankRiderManager.deviceMotion.attitude];
        
        //数値の取得と丸め
        self.Bank = self.currentAttitude.pitch - reviseBank;
        int pitchDegree = round(180 * (self.currentAttitude.pitch - reviseBank) / M_PI);
        
        
        //角度アニメーション
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.1];
        _BankRider.transform = CGAffineTransformMakeRotation(-self.Bank);
        [UIView commitAnimations];
        self.bankLabel.text = [NSString stringWithFormat:@"%d°",-pitchDegree];
        
        
    }];
    
    
}

- (IBAction)resetButton:(id)sender {
    reviseBank = self.currentAttitude.pitch;
    
    
}

- (IBAction)backToMainViewAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)infoAction:(id)sender {
    webViewController* webViewCtl = [[webViewController alloc]init];
    [self presentViewController:webViewCtl animated:YES completion:nil];
    
}

- (IBAction)userButtonAction:(id)sender {
    settingViewController *settingViewCtl = [[settingViewController alloc] init];
    [self presentViewController:settingViewCtl animated:YES completion:nil];

    
    
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    //文字を白くする
    return UIStatusBarStyleLightContent;
}
@end
