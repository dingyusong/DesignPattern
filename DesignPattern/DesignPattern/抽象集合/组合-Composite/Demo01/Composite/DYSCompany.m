//
//  DYSCompany.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSCompany.h"

@interface DYSCompany ()

@property(nonatomic,strong)NSMutableArray *childList;

@end

@implementation DYSCompany
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
        _childList = [NSMutableArray array];
    }
    return self;
}

#pragma mark - DYSCompanyComponentProtocol

-(void)add:(id<DYSCompanyComponentProtocol>)company{
    [self.childList addObject:company];
}

-(void)remove:(id<DYSCompanyComponentProtocol>)company{
    [self.childList removeObject:company];
}

-(void)display{
    NSLog(@"%@的子公司",self.name);
    for (id<DYSCompanyComponentProtocol> company in self.childList) {
        [company display];
    }
}

-(void)lineofDuty{
    NSLog(@"%@的子公司的职责",self.name);
    for (id<DYSCompanyComponentProtocol> company in self.childList) {
        [company lineofDuty];
    }
}

@end
