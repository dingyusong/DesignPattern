//
//  DYSRule01FactoryB.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/27.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSRule01FactoryB.h"

@implementation DYSRule01FactoryB
-(NSString *)preProcess{
    return @"使用原料2";
    //  return @"使用原料1";
}
- (void)createProductB{
    NSLog(@"%@", [NSString stringWithFormat:@"%@生产产品B", [self preProcess]]);
}
@end
