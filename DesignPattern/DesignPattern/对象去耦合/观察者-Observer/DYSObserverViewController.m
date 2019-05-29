//
//  DYSObserverViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
意图：
定义对象间的⼀一种⼀一对多的依赖关系，当⼀一个对象的状态发⽣生改变时，所有依赖于它的都得到通知并被⾃自动更新。
也称为发布订阅模式。
 
 参与者：
 ・Subject(⽬标）
 目标知道它的观察者。可以有任意多个观察者观察同⼀一个目标。
 提供注册和删除观察者对象的接口。
 
 ・Observer(观察者）
 为那些在目标发生改变时需获得通知的对象定义一个更新接口。
 
 ・ConcreteSubject(具体目标）
 将有关状态存入各ConcreteObserver对象。
 当它的状态发⽣生改变时，向它的各个观察者发出通知。
 
 ・ConcreteObserver(具体观察者）
 维护一个指向ConcreteSubject对象的引用。
 存储有关状态，这些状态应与⽬标的状态保持一致。
 实现Observer的更新接口以使自身状态与目标的状态保持一致。
 
 */
#import "DYSObserverViewController.h"

#import "DYSNBAObserver.h"
#import "DYSStockObserver.h"

#import "DYSSecreteSubject.h"

@interface DYSObserverViewController ()

@end

@implementation DYSObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    DYSAbstractSubject *subject = [[DYSSecreteSubject alloc]init];
    //添加三个通知对象
    id<DYSObserverInterface> nbaobserver = [[DYSNBAObserver alloc]init];
    [subject attach:nbaobserver];
    id<DYSObserverInterface> stockobserver = [[DYSStockObserver alloc]init];
    [subject attach:stockobserver];
    id<DYSObserverInterface> stockobserver1 = [[DYSStockObserver alloc]init];
    [subject attach:stockobserver1];
    //删除一个通知对象
    [subject detach:stockobserver];
    
    [subject notify];

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
