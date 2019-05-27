//
//  SqlServerFactory.m
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "SqlServerFactory.h"
#import "SqlServerUser.h"

@implementation SqlServerFactory

- (AbstractUseAccess *)createUser {
    AbstractUseAccess *userAccess = [SqlServerUser new];
    return userAccess;
}

- (void)createDepartment {
}

@end
