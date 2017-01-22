//
//  NSObject+URLs.h
//  iOS检查更新
//
//  Created by 云媒 on 17/1/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLs)

/*
 URL iTunes app网址
 */
+ (NSString *)iTunesAppURLWithAppID;
/*
 获取iTunes app 版本号
 */
+ (NSString *)iTunesAppVersionWithAppID;
/*
 获取iTunesApp txt文件内容
 */
+ (NSArray *)iTunesAppTextWithAppID;

@end
