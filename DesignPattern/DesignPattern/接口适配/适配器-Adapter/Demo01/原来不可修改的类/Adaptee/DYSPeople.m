//
//  DYSPeople.m
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSPeople.h"

@implementation DYSPeople

- (instancetype)initWithXingMing:(NSString *)xingMing {
    self = [super init];
    if (self) {
        _xingMing = xingMing;
    }
    return self;
}

- (void)sayXingMing {
    NSLog(@"我叫:%@", self.xingMing);
}

@end
