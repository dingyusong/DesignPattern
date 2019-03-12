//
//  DYSObjectStructure.m
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSObjectStructure.h"

@interface DYSObjectStructure ()

@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation DYSObjectStructure

- (instancetype)init {
    self = [super init];
    if (self) {
        _array = [NSMutableArray new];
    }
    return self;
}

- (void)add:(DYSAbstractElement *)element {
    [_array addObject:element];
}

- (void)accept:(DYSAbstractVisitor *)visitor {
    for (DYSAbstractElement *element in self.array) {
        [element accept:visitor];
    }
}

@end
