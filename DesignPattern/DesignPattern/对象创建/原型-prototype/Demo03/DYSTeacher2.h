//
//  DYSTeacher2.h
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/19.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSTeacher2 : NSObject <NSCopying>

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age course:(NSString *)course;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, copy) NSString *course;

@end

NS_ASSUME_NONNULL_END
