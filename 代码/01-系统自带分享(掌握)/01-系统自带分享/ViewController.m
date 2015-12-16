//
//  ViewController.m
//  01-系统自带分享
//
//  Created by apple on 15/1/31.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 1.判断平台是否可用
    if (![SLComposeViewController isAvailableForServiceType:SLServiceTypeSinaWeibo]) {
        NSLog(@"查看您是否设置了新浪微博帐号,设置界面-->新浪微博-->配置帐号");
    }
    
    // 2.创建SLComposeViewController
    SLComposeViewController *composeVc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeSinaWeibo];
    
    // 2.1.添加分享文字
    [composeVc setInitialText:@"做人如果没有梦想,跟咸鱼有什么区别"];
    
    // 2.2.添加分享图片
    [composeVc addImage:[UIImage imageNamed:@"xingxing"]];
    
    // 3.弹出分享界面
    [self presentViewController:composeVc animated:YES completion:nil];
    
    
    // 4.设置block属性
    composeVc.completionHandler = ^ (SLComposeViewControllerResult result) {
        if (result == SLComposeViewControllerResultCancelled) {
            NSLog(@"用户点击了取消");
        } else {
            NSLog(@"用户点击了发送");
        }
    };
}

@end
