//
//  DYSForenoonState.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSForenoonState.h"
#import "DYSNoonState.h"

@implementation DYSForenoonState
-(void)writeProgram:(DYSStateWork *)work{
    if (work.hour < 12) {
        NSLog(@"当前时间：{%.f}点，上午工作，精神百倍", work.hour);
    }else{
        work.state = [[DYSNoonState alloc] init];
        [work writeProgram];
    }
}

@end
