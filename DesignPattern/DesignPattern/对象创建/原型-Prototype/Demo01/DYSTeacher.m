//
//  DYSTeacher.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/13.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSTeacher.h"

@implementation DYSTeacher

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age course:(NSString *)course {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _course = course;
    }
    return self;
}

- (id)dys_clone {
    DYSTeacher *teacher = [[[self class] alloc] initWithName:self.name age:self.age course:self.course];
    return teacher;
}

@end
