//
//  DYSEventState.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSEventState.h"
#import "DYSRestState.h"
#import "DYSSleepState.h"

@implementation DYSEventState
-(void)writeProgram:(DYSStateWork *)work{
    if (work.finished) {
        work.state = [[DYSRestState alloc] init];
        [work writeProgram];
    } else {
        if (work.hour < 21) {
            NSLog(@"当前时间：{%.f}点，加班哦，疲累之极", work.hour);
        } else {
            work.state = [[DYSSleepState alloc] init];
            [work writeProgram];
        }
    }
    
}

@end
