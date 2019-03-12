//
//  DYSMediator.m
//  MediatorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSMediator.h"

@implementation DYSMediator
@synthesize colleague1 = _colleague1;
@synthesize colleague2 = _colleague2;

- (void)send:(NSString *)message colleague:(DYSAbstractColleague *)colleague {
    if (colleague == _colleague1) {
        [_colleague2 notify:message];
    }
    else {
        [_colleague1 notify:message];
    }
}

@end
