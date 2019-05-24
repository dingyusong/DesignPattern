//
//  OperateFactory.m
//  SimpleFactory
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "OperateFactory.h"
#import "OperateAdd.h"
#import "OperateSub.h"

@implementation OperateFactory

+ (OperateBase *)createOperate:(NSString *)operateStr{
    OperateBase *operate = nil;
    
    if ([operateStr isEqualToString:@"+"]) {
        operate = [OperateAdd new];
    }
    else if ([operateStr isEqualToString:@"-"]) {
        operate = [OperateSub new];
    }
    
    return operate;
}

@end
