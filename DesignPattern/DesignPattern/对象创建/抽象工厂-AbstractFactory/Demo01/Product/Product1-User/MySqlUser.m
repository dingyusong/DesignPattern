//
//  MySqlUser.m
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "MySqlUser.h"

@implementation MySqlUser
- (void)insertUser:(User *)user {
    NSLog(@"mysql数据库 插入用户");
}

- (User *)gotUser {
    NSLog(@"mysql数据库 获得用户");

    return [User new];
}
@end
