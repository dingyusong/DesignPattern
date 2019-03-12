//
//  DYSAdapter.m
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSAdapter.h"

@interface DYSAdapter ()

@end

@implementation DYSAdapter

- (instancetype)initWithPeople:(DYSPeople *)people {
    self = [super init];
    if (self) {
        _people = people;
    }
    return self;
}

- (NSString *)name {
    return self.people.xingMing;
}

- (void)speakName {
    NSLog(@"我叫：%@", self.name);
}

@synthesize name;

@end
