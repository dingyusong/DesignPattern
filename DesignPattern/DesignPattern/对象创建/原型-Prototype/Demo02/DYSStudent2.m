//
//  DYSStudent2.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/19.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSStudent2.h"

@implementation DYSStudent2

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age grade:(NSInteger)grade {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _grade = grade;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    DYSStudent2 *student = [[[self class] allocWithZone:zone] initWithName:self.name age:self.age grade:self.grade];
    return student;
}

@end
