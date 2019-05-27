//
//  DYSRule01FactoryA.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/27.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSRule01FactoryA.h"

@implementation DYSRule01FactoryA
-(NSString *)preProcess{
    return @"使用原料1";
}
- (void)createProductA{
    NSLog(@"%@", [NSString stringWithFormat:@"%@生产产品A", [self preProcess]]);
}
@end
