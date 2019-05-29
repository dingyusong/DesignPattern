//
//  DYSStateWork.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSStateWork.h"
#import "DYSForenoonState.h"

@implementation DYSStateWork
-(instancetype)init{
    self = [super init];
    if (self) {
        self.state = [[DYSForenoonState alloc]init];
    }
    return self;
}

-(void)writeProgram{
    [self.state writeProgram:self];
}

@end
