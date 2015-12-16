//
//  ViewController.m
//  01-系统自带分享
//
//  Created by apple on 14-12-18.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 1.判断分享是否可用
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeSinaWeibo]) {
        NSLog(@"请先设置新浪微博");
        return;
    }
    
    // 2.创建SLComposeViewController,并且设置ServiceType
    SLComposeViewController *composeVc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeSinaWeibo];
    // 3.设置分享的文字
    [composeVc setInitialText:@"出任CEO,迎娶白富美,走向人生巅峰"];
    // 4.设置图片
    [composeVc addImage:[UIImage imageNamed:@"xingxing"]];
    // 5.弹出分享界面
    [self presentViewController:composeVc animated:YES completion:nil];
    
    // 6.监听用户点击了发送还是取消
    composeVc.completionHandler = ^ (SLComposeViewControllerResult result) {
        if (result == SLComposeViewControllerResultCancelled) {
            NSLog(@"分享失败");
        } else {
            NSLog(@"分享成功");
        }
    };
}

@end
