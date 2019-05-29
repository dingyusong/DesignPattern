//
//  DYSDuckOrder.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSDuckOrder.h"

@implementation DYSDuckOrder
-(void)executeOrder{
    NSLog(@"烤鸭");
    [[DYSWorker sharedWorker] doChickenWork:self.orderString];
}

@end
