//
//  ViewController.m
//  iOS检查更新
//
//  Created by 云媒 on 17/1/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import "ViewController.h"
#import "NSString+URLs.h"
#import "NSObject+Update.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   //https://itunes.apple.com/us/app/yun-mei-yun-cang-chu/id1189430633?mt=8&uo=4
   NSString *appUrl = [NSString iTunesAppURLWithAppID];
   //1.2
   NSString *appVersion = [NSString iTunesAppVersionWithAppID];
   //包含app Store里面很多信息
   NSArray *appText = [NSString iTunesAppTextWithAppID];
   NSLog(@"url:%@,version:%@,Text:%@",appUrl,appVersion,appText);
}

- (IBAction)button:(UIButton *)sender {
    //1.感觉效果更好
    //@"https://itunes.apple.com/us/app/yun-mei-yun-cang-chu/id1189430633?mt=8"
    
    //2.这个效果不太好，但是实现同样的效果
    //手机：itms
    //@"itms://itunes.apple.com/us/app/yun-mei-yun-cang-chu/id1189430633?mt=8"
    
    //3.itms-apps
    //@"itms-apps://itunes.apple.com/us/app/yun-mei-yun-cang-chu/id1189430633?mt=8"
    NSString *urlStr = @"itms-apps://itunes.apple.com/us/app/yun-mei-yun-cang-chu/id1189430633?mt=8";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
}





@end
