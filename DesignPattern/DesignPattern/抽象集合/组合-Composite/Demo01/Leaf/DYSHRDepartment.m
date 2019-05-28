//
//  DYSHRDepartment.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSHRDepartment.h"

@implementation DYSHRDepartment
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}
-(void)add:(id<DYSCompanyComponentProtocol>)company{
    
}
-(void)display{
    NSLog(@"%@的HR部门",self.name);
}
-(void)remove:(id<DYSCompanyComponentProtocol>)company{
    
}
-(void)lineofDuty{
    NSLog(@"%@,培训员工",self.name);
}

@end
