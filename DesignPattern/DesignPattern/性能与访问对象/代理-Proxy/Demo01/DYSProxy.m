//
//  DYSProxy.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSProxy.h"
#import "DYSSchoolGirl.h"
#import "DYSPursuit.h"


@interface DYSProxy ()
@property (strong, nonatomic) DYSPursuit *pursuit;
@end

@implementation DYSProxy
- (instancetype)initWithSchoolGirl:(DYSSchoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.pursuit = [[DYSPursuit alloc] initWithSchoolGirl:schoolGirl];
    }
    return self;
}

- (void)giveDolls {
    [self.pursuit giveDolls];
}

- (void)giveFlowers {
    [self.pursuit giveFlowers];
}

- (void)giveChocolate {
    [self.pursuit giveChocolate];
}

@end
