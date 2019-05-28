//
//  DYSConcreteWebSite.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSConcreteWebSite.h"

@implementation DYSConcreteWebSite
-(void)use:(DYSFWUser *)user{
    NSLog(@"网站分类:%@,用户:%@",self.webName,user.name);
}

@end
