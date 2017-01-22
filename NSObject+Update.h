//
//  NSObject+Update.h
//  iOS检查更新
//
//  Created by 云媒 on 17/1/22.
//  Copyright © 2017年 YunMei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Update)
/*
 更新app
 ServerVerSion : 服务器返回的版本号
 BundleVersion : 工程项目本身的版本号(app旧版本号)
 */
+ (BOOL)updateAppWithServerVerSion:(NSString *)ServerVerSion;
@end
