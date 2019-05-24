//
//  OperateFactory.h
//  SimpleFactory
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperateBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface OperateFactory : NSObject

+ (OperateBase *)createOperate:(NSString *)operateStr;

@end

NS_ASSUME_NONNULL_END
