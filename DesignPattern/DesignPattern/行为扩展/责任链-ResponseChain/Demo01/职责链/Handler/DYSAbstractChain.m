//
//  DYSAbstractChain.m
//  ResponseChainPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAbstractChain.h"

@implementation DYSAbstractChain
@synthesize superior;

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)dealWithRequest:(DYSRequest *)request {
}



@end
