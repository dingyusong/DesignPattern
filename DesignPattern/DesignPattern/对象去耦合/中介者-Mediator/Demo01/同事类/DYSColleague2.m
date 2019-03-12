//
//  DYSColleague2.m
//  MediatorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSColleague2.h"
#import "DYSAbstractMediator.h"

@implementation DYSColleague2

@synthesize mediator = _mediator;

- (instancetype)initWithMediator:(DYSAbstractMediator *)mediator {
    self = [super init];
    if (self) {
        _mediator = mediator;
    }
    return self;
}

- (void)send:(NSString *)message {
    NSLog(@"同事2发送了信息");
    [_mediator send:message colleague:self];
}

- (void)notify:(NSString *)message {
    NSLog(@"%@%@", @"同事2得到消息", message);
}
@end
