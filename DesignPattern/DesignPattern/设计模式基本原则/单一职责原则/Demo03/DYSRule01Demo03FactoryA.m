//
//  DYSRule01Demo03FactoryA.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/27.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSRule01Demo03FactoryA.h"

@implementation DYSRule01Demo03FactoryA
/**
 预处理
 
 @return return value description
 */
-(NSString *)preProcess{
    return @"使用原料1";
}

/**
 生产产品
 */
-(void)createProduct{
    NSLog(@"%@", [NSString stringWithFormat:@"%@生产产品B", [self preProcess]]);

}

@end
