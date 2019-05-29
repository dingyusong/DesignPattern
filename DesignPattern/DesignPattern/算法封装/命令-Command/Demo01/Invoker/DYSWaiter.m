//
//  DYSWaiter.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSWaiter.h"
#import "DYSAbstractOrder.h"

@interface DYSWaiter ()
//用于存储命令列表
@property(nonatomic,strong)NSMutableArray *orderList;
@end

@implementation DYSWaiter
-(instancetype)init{
    self = [super init];
    if (self) {
        _orderList = [NSMutableArray array];
    }
    return self;
}
-(void)addOrder:(DYSAbstractOrder *)order{
    NSLog(@"添加Order");
    [self.orderList addObject:order];
}
-(void)deleteOrder:(DYSAbstractOrder *)order{
    NSLog(@"取消Order");
    [self.orderList removeObject:order];
}
/*
 命令接收完毕，开始执行命令
 */
-(void)notifyOrder{
    NSLog(@"====开始执行Order===");
    for (DYSAbstractOrder *order in self.orderList) {
        [order executeOrder];
    }
}

@end
