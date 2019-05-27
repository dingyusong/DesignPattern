//
//  VolunteerLeiFengFactory.m
//  FactoryMethod
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "VolunteerLeiFengFactory.h"
#import "VolunteerLeiFeng.h"

@implementation VolunteerLeiFengFactory

+ (id)createLeiFeng {
    LeiFeng *leifeng = [VolunteerLeiFeng new];
    return leifeng;
}

@end
