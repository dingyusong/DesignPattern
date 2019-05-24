//
//  MySqlFactory.m
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "MySqlFactory.h"
#import "MySqlUser.h"

@implementation MySqlFactory

- (AbstractUseAccess *)createUser {
    AbstractUseAccess *userAccess = [MySqlUser new];
    return userAccess;
}

- (void)createDepartment {
}

@end
