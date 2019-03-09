//
//  DYSStudent.h
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/13.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSCloneProtocol.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSStudent : NSObject <DYSCloneProtocol>

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age grade:(NSInteger)grade;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) NSInteger grade;

@end

NS_ASSUME_NONNULL_END
