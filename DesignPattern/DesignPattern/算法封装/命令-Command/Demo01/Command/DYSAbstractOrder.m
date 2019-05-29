//
//  DYSAbstractOrder.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSAbstractOrder.h"

@implementation DYSAbstractOrder
-(instancetype)initWithOrderString:(NSString *)orderString{
    self = [super init];
    if (self) {
        _orderString = orderString;
    }
    return self;
}

-(void)executeOrder {
    
}

@end
