//
//  DYSPursiut.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSPursiut.h"

@interface DYSPursiut ()
@property(nonatomic,strong)DYSSchoolGirl *schoolGirl;
@end

@implementation DYSPursiut

-(instancetype)initWithSchoolGirl:(DYSSchoolGirl *)schoolGirl{
    self = [super init];
    if (self) {
        _schoolGirl = schoolGirl;
    }
    return self;
}
-(void)giveChocolate{
    NSLog(@"送你巧克力%@",self.schoolGirl.name);
}
-(void)giveDolls{
    NSLog(@"送你洋娃娃%@",self.schoolGirl.name);
}
-(void)giveFlowers{
    NSLog(@"送你玫瑰花%@",self.schoolGirl.name);
}


@end
