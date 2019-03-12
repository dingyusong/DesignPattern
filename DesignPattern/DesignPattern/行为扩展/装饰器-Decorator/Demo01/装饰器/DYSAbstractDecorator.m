//
//  DYSAbstractDecorator.m
//  DecoratorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAbstractDecorator.h"

@implementation DYSAbstractDecorator

- (void)operate {
    [self.component operate];
}

@end
