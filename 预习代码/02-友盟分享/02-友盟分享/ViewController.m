//
//  ViewController.m
//  02-友盟分享
//
//  Created by apple on 14-12-18.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"

@interface ViewController ()<UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSString *text = @"111";
    UIImage *image = [UIImage imageNamed:@"xingxing"];
    NSArray *names = @[UMShareToDouban, UMShareToEmail, UMShareToFacebook, UMShareToRenren, UMShareToSina, UMShareToTencent];
    [UMSocialSnsService presentSnsIconSheetView:self appKey:@"5492dcf9fd98c5e7f8001834" shareText:text shareImage:image shareToSnsNames:names delegate:self];
}

-(void)didFinishGetUMSocialDataInViewController:(UMSocialResponseEntity *)response
{
    NSLog(@"%d", response.responseCode);
}

@end
