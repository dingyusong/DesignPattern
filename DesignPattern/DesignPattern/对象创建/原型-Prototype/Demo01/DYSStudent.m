//
//  DYSStudent.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/13.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSStudent.h"

@implementation DYSStudent

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age grade:(NSInteger)grade {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _grade = grade;
    }
    return self;
}

- (id)dys_clone {
    DYSStudent *student = [[[self class] alloc] initWithName:self.name age:self.age grade:self.grade];
    return student;
}

@end
