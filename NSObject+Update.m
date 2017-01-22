//
//  NSObject+Update.m
//  iOS检查更新
//
//  Created by 云媒 on 17/1/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import "NSObject+Update.h"
#import "NSString+URLs.h"
@implementation NSObject (Update)

/*
 更新app
 ServerVerSion : 服务器返回的版本号
 BundleVersion : 工程项目本身的版本号(app旧版本号)1.2 == Version
 iTunesAppVersionWithAppID : 获取app store 版本号
 */
+ (BOOL)updateAppWithServerVerSion:(NSString *)ServerVerSion
{
    NSDictionary *dict = [[NSBundle mainBundle] infoDictionary];
    NSString *BundleVersion = [dict objectForKey:@"CFBundleShortVersionString"];
    if (![ServerVerSion isEqualToString:BundleVersion] && ![BundleVersion isEqualToString:[NSString iTunesAppVersionWithAppID]]) {
        return 1;//需要更新
    }
    return  0;//不需要更新
}
@end
