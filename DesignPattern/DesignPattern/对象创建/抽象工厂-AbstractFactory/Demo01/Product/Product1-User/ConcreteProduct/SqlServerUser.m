//
//  SqlServerUser.m
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "SqlServerUser.h"
#import "User.h"

@implementation SqlServerUser

- (void)insertUser:(User *)user {
    NSLog(@"sqlserver数据库 插入用户");
}

- (User *)gotUser {
    NSLog(@"sqlserver数据库 获得用户");

    return [User new];
}

@end
