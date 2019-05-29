//
//  DYSAfternoonState.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSAfternoonState.h"
#import "DYSEventState.h"

@implementation DYSAfternoonState
-(void)writeProgram:(DYSStateWork *)work{
    if (work.hour < 13) {
        NSLog(@"当前时间：{%.f}点，饿了，午饭；犯困，午休", work.hour);
    } else {
        work.state = [[DYSEventState alloc] init];
        [work writeProgram];
    }
}

@end
