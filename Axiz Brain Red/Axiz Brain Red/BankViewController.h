//
//  BankViewController.h
//  Axiz Brain Red
//
//  Created by 左藤樹洋 on 2014/08/05.
//  Copyright (c) 2014年 Tatsuhiro Sato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface BankViewController : UIViewController

@property CMMotionManager *BankRiderManager;

@property (weak, nonatomic) IBOutlet UIImageView *BankRider;


@end
