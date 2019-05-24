//
//  AbstractUseAccess.m
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "AbstractUseAccess.h"

@implementation AbstractUseAccess

- (void)insertUser:(User *)user {
    NSLog(@"插入用户");
}

- (User *)gotUser {
    NSLog(@"获得用户");
    return nil;
}
@end
