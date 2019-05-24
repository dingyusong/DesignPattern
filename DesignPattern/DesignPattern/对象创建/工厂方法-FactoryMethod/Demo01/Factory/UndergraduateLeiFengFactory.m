//
//  UndergraduateLeiFengFactory.m
//  FactoryMethod
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "UndergraduateLeiFengFactory.h"
#import "UnderGraduateLeiFeng.h"

@implementation UndergraduateLeiFengFactory

+ (id)createLeiFeng {
    LeiFeng *leiFeng = [UnderGraduateLeiFeng new];
    return leiFeng;
}

@end
