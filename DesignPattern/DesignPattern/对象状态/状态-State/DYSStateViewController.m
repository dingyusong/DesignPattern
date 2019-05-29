//
//  DYSStateViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 状态模式
 
 意图：
 允许一个对象在其内部状态改变时改变它的行为。对象看起来似乎修改了它的类。
 
 参与者：
 1.Context
 定义客户感兴趣的接口。
 维护一个ConcreteState子类的实例，这个实例定义当前状态。
 
 2.State
 定义一个接口以封装与Context的一个特定状态相关的c行为，
 
 3.ConcreteState subclasses(具体状态⼦子类）
 
 每⼀子类实现一个与Context的一个状态相关的行为。
 
 
 */
#import "DYSStateViewController.h"
#import "DYSStateWork.h"
#import "DYSNoonState.h"
#import "DYSAfternoonState.h"
#import "DYSEventState.h"
#import "DYSSleepState.h"
#import "DYSRestState.h"

@interface DYSStateViewController ()

@end

@implementation DYSStateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    DYSStateWork *work = [[DYSStateWork alloc]init];
    work.hour = 18;
    [work writeProgram];
    work.state = [[DYSAfternoonState alloc]init];
    [work writeProgram];
    work.state = [[DYSEventState alloc]init];
    [work writeProgram];
    work.state = [[DYSSleepState alloc]init];
    [work writeProgram];

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
