//
//  DBFactoryProtocol.h
//  AbstractFactory
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "AbstractUseAccess.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DBFactoryProtocol <NSObject>

- (AbstractUseAccess *)createUser;
- (void)createDepartment;

@end

NS_ASSUME_NONNULL_END
