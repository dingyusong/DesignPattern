//
//  DYSCourse.m
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSCourse.h"

@interface DYSCourse ()

@property (nonatomic, copy) NSMutableArray *stuffArray;

@end

@implementation DYSCourse
- (instancetype)init {
    self = [super init];
    if (self) {
        _stuffArray = [NSMutableArray new];
    }
    return self;
}

- (void)addStaff:(id<DYSAdapterProtocol>)stuff {
    [self.stuffArray addObject:stuff];
}

- (void)introduceSelfOneByOne {
    for (id<DYSAdapterProtocol> item in self.stuffArray) {
        [item speakName];
    }
}

@end
