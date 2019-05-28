//
//  DYSFinanceDepartment.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSFinanceDepartment.h"

@implementation DYSFinanceDepartment
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
    NSLog(@"%@,的财务部门",self.name);
}
-(void)remove:(id<DYSCompanyComponentProtocol>)company{
    
}
-(void)lineofDuty{
    NSLog(@"%@,给员工发钱",self.name);
}

@end
