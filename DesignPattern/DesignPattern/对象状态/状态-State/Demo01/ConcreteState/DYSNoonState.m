//
//  DYSNoonState.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSNoonState.h"
#import "DYSEventState.h"

@implementation DYSNoonState
-(void)writeProgram:(DYSStateWork *)work{
    if (work.hour < 17) {
        NSLog(@"当前时间：{%.f}点，下午状态还不错，继续努力", work.hour);
    } else {
        work.state = [[DYSEventState alloc] init];
        [work writeProgram];
    }
}

@end
