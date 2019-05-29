//
//  DYSCustomer.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSCustomer.h"
#import "DYSMuttonOrder.h"
#import "DYSChickenOrder.h"
#import "DYSDuckOrder.h"

@implementation DYSCustomer

-(DYSAbstractOrder *)pushOrderWithString:(NSString *)string type:(orderType)type{
    DYSAbstractOrder *order = nil;
    switch (type) {
        case orderTypeMutton:
            order = [[DYSMuttonOrder alloc]initWithOrderString:string];
            break;
        case orderTypeChicken:
            order = [[DYSChickenOrder alloc]initWithOrderString:string];
            break;
        case orderTypeDuck:
            order = [[DYSDuckOrder alloc]initWithOrderString:string];
            break;
    }
    return order;
}

@end
