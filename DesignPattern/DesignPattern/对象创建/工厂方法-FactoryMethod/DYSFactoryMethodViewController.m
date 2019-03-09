//
//  DYSFactoryMethodViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/8.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSFactoryMethodViewController.h"

#import "LeiFeng.h"

#import "UndergraduateLeiFengFactory.h"
#import "VolunteerLeiFengFactory.h"

/**
 学雷锋志愿者帮助孤寡老人
 
 学雷锋志愿者有学生和社区志愿者
 
 主要帮助老人做洗衣服，打扫卫生，买菜这些活。
 
 */
@interface DYSFactoryMethodViewController ()

@end

@implementation DYSFactoryMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self demo01];
    [self demo02];
}


/**
 工厂方法模式
 */
- (void)demo01 {
    
    //工厂方法模式
    LeiFeng *underGraduateLeiFeng = [UndergraduateLeiFengFactory createLeiFeng];
    [underGraduateLeiFeng sweep];
    [underGraduateLeiFeng wash];
    [underGraduateLeiFeng buyFood];
    
    LeiFeng *volunteerLeiFeng = [VolunteerLeiFengFactory createLeiFeng];
    [volunteerLeiFeng sweep];
    [volunteerLeiFeng wash];
    [volunteerLeiFeng buyFood];
    
    //新增一个学雷锋的类型的话，则新增一个创建雷锋对象的工厂和学雷锋子类，不需要修改原有的代码，符合开闭原则
}


/**
 CocoaTouch框架中的工厂方法模式
 */
- (void)demo02 {
    NSNumber *number1 = [NSNumber numberWithBool:YES];
    NSNumber *number2 = [NSNumber numberWithDouble:11.2];
    
    NSLog(@"%@-%@", number1, number2);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
