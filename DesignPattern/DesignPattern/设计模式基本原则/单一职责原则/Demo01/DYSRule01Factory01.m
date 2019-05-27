//
//  DYSRule01Factory01.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/27.
//  Copyright © 2019 丁玉松. All rights reserved.
//

/*
 这个类有两个功能：生产产品A和生产产品B。
 
 现在需要修改生产产品B这个功能，改为使用原料2。修改preProcess 则会影响到产品A。
 
 */

#import "DYSRule01Factory01.h"

@implementation DYSRule01Factory01

-(NSString *)preProcess{
    return @"使用原料2";
//  return @"使用原料1";
}
- (void)createProductA{
    NSLog(@"%@", [NSString stringWithFormat:@"%@生产产品A", [self preProcess]]);
}
- (void)createProductB{
    NSLog(@"%@", [NSString stringWithFormat:@"%@生产产品B", [self preProcess]]);
}

@end
