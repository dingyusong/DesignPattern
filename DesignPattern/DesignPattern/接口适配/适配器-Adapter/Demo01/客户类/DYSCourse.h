//
//  DYSCourse.h
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSAdapterProtocol.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSCourse : NSObject

/**
 添加课程成员

 @param stuff stuff description
 */
- (void)addStaff:(id<DYSAdapterProtocol>)stuff;

/**
 一一自我介绍
 */
- (void)introduceSelfOneByOne;

@end

NS_ASSUME_NONNULL_END
