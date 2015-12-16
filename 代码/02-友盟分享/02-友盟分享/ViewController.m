//
//  ViewController.m
//  02-友盟分享
//
//  Created by apple on 15/2/2.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"

@interface ViewController ()

- (IBAction)shareClick;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareClick {
    NSString *shareText = @"出任CEO,赢取白富美,走向人生巅峰";
    UIImage *shareImage = [UIImage imageNamed:@"xingxing"];
    
//    [UMSocialSnsService presentSnsIconSheetView:self
//                                         appKey:@"54ced694fd98c588d2000210"
//                                      shareText:shareText
//                                     shareImage:shareImage
//                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToTencent,UMShareToRenren,UMShareToEmail,nil]
//                                       delegate:nil];
    [UMSocialSnsService presentSnsController:self appKey:@"54ced694fd98c588d2000210" shareText:shareText shareImage:shareImage shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToTencent,UMShareToRenren,UMShareToEmail,nil] delegate:nil];
}
@end
