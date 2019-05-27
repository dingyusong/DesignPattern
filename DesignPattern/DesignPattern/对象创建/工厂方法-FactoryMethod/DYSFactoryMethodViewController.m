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

/*
 
 设计模式分为：
 目的：创建型，结构型，行为型
 范围：类，对象
 工厂方法模式是「创建型类模式」
 
 创建型类模式将对象的部分创建⼯作延迟到子类，而创建型对象模式则将它延迟到另⼀个对象中。
 UndergraduateLeiFengFactory 和 VolunteerLeiFengFactory 都是LeiFengFactory的子类 LeiFeng的实例化都是由这些子类完成的。
 
 原则：
 针对接口编程，而不是针对实现编程。createUser，insertUser，gotUser 这些都是定义的抽象接口
 
 参与者：
 AbstractFactory
 
 ConcreteFactory
 
 AbstractProduct
 
 ConcreteProduct
 
 协作：
 AbstractFactory 依赖其子类来定义工厂方法，所以他返回一个对用的ConcreteProduct。
 
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
