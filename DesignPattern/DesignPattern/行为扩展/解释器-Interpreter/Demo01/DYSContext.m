//
//  DYSContext.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSContext.h"

@implementation DYSContext
-(instancetype)initWithInput:(NSString *)input{
    self = [super init];
    if (self) {
        _input = input;
    }
    return self;
}
-(NSString *)output{
    return [NSString stringWithFormat:@"输入的是%@",_input];
}

@end
