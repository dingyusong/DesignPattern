//
//  DYSChainBoss.m
//  ResponseChainPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSChainBoss.h"

@implementation DYSChainBoss

- (void)dealWithRequest:(DYSRequest *)request {
    if ([request.requestType isEqualToString:@"请假"] && request.number < 30) {
        NSLog(@"%@处理了%@,时间是%d", self.name, request.requestType, request.number);
    }
    else {
        [self.superior dealWithRequest:request];
    }
}

@end
