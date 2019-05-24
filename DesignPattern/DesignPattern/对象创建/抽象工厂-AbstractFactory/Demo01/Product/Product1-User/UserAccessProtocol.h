//
//  UserAccessProtocol.h
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "User.h"
#import <Foundation/Foundation.h>

@protocol UserAccessProtocol <NSObject>

- (void)insertUser:(User *)user;

- (User *)gotUser;

@end
