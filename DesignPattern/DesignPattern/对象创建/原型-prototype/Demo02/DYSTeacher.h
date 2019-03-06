//
//  DYSTeacher.h
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/13.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSCloneProtocol.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSTeacher : NSObject <DYSCloneProtocol>

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age course:(NSString *)course;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, copy) NSString *course;

@end

NS_ASSUME_NONNULL_END
