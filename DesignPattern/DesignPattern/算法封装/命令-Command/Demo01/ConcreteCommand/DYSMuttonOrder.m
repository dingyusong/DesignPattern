//
//  DYSMuttonOrder.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSMuttonOrder.h"

@implementation DYSMuttonOrder

-(void)executeOrder{
    NSLog(@"烤羊");
    //绑定接收者及其相关操作
    [[DYSWorker sharedWorker] doMuttonWork:self.orderString];
}

@end
