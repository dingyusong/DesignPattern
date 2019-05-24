//
//  OperateBase.h
//  SimpleFactory
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OperateBase : NSObject
@property (nonatomic, assign) CGFloat numberA;
@property (nonatomic, assign) CGFloat numberB;

- (CGFloat)GetResult;

@end

NS_ASSUME_NONNULL_END
