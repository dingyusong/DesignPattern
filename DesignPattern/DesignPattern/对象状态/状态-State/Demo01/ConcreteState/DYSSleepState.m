//
//  DYSSleepState.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSSleepState.h"

@implementation DYSSleepState
- (void)writeProgram:(DYSStateWork *)work {
    NSLog(@"当前时间：{%.f}点，不行了，睡着了", work.hour);
}

@end
