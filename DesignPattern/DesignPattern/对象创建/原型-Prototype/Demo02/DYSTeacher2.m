//
//  DYSTeacher2.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/19.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSTeacher2.h"

@implementation DYSTeacher2

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age course:(NSString *)course {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _course = course;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    DYSTeacher2 *teacher = [[DYSTeacher2 allocWithZone:zone] initWithName:self.name age:self.age course:self.course];
    return teacher;
}

@end
