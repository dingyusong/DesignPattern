//
//  DYSChickenOrder.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSChickenOrder.h"

@implementation DYSChickenOrder
-(void)executeOrder{
    NSLog(@"烤鸡");
    [[DYSWorker sharedWorker] doChickenWork:self.orderString];
}

@end
