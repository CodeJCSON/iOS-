//
//  NSObject+URLs.m
//  iOS检查更新
//
//  Created by 云媒 on 17/1/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import "NSString+URLs.h"

@implementation NSString (URLs)


/*
 URL iTunes app网址
 */
+ (NSString *)iTunesAppURLWithAppID
{
    NSArray *resultArray = [self iTunesAppTextWithAppID];
    NSDictionary *infoDict = resultArray.lastObject;
    NSString *trackViewUrl = [infoDict objectForKey:@"trackViewUrl"];
    return trackViewUrl;
}
/*
 获取iTunes app 版本号
 */
+ (NSString *)iTunesAppVersionWithAppID
{
    NSArray *resultArray = [self iTunesAppTextWithAppID];
    NSDictionary *infoDict = resultArray.lastObject;
    NSString *version = [infoDict objectForKey:@"version"];
    return version;
}
/*
 获取iTunesApp txt文件内容
 */
+ (NSArray *)iTunesAppTextWithAppID
{
    NSError *error;
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://itunes.apple.com/lookup?id=%@",@"1189430633"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSDictionary *appInfoDict = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:nil];
    if (error) {
        return nil;
    }
    NSArray *resultArray = [appInfoDict objectForKey:@"results"];
    if (![resultArray count]) {
        return nil;
    }
    return resultArray;
}

@end
