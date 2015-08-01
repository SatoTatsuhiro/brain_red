//
//  webViewController.m
//  Axiz Brain Blue
//
//  Created by 左藤樹洋 on 2014/06/26.
//  Copyright (c) 2014年 Tatsuhiro Sato. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *WebView;
- (IBAction)closeWebViewAction:(id)sender;

@end

@implementation webViewController

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
    // Do any additional setup after loading the view from its nib.
    NSURLRequest* req = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.axiz-brain.com/"]];
    [self.WebView loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeWebViewAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeLeft;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    //文字を白くする
    return UIStatusBarStyleLightContent;
}

@end
