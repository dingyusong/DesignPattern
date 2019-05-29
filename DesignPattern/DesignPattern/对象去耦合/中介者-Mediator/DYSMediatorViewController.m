//
//  DYSMediatorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

/*
 
 意图：
 用一个中介对象来封装一系列的对象交互。中介者使各对象不需要显式地相互引用，从 ⽽使其藕合松散，而且可以独立地改变它们之间的交互。
 
 
 参与者
 ・Mediator(中介者）
 中介者定义⼀一个接⼝口⽤用于与各同事(Colleague)对象
 
 ・ConcreteMediator(具体中介者）
 具体中介者通过协调各同事对象实现协作
 了了解并维护它的各个同事
 
 ・Colleague class
 每一个同事类都知道它的中介者
 每一个同事对象在需与其他的同事通信的时候，与它的中介者通信
 
 */
#import "DYSMediatorViewController.h"
#import "DYSColleague1.h"
#import "DYSColleague2.h"
#import "DYSMediator.h"

@interface DYSMediatorViewController ()

@end

@implementation DYSMediatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

-(void)demo01 {
    //初始化一个中介者对象
    DYSMediator *mediator = [[DYSMediator alloc] init];
    
    //初始化并且让两个同事有相同的中介者对象
    DYSColleague1 *c1 = [[DYSColleague1 alloc] initWithMediator:mediator];
    DYSColleague2 *c2 = [[DYSColleague2 alloc] initWithMediator:mediator];
    
    //给中介者对象绑定两个要交互的同事对象
    mediator.colleague1 = c1;
    mediator.colleague2 = c2;
    
    [c1 send:@"吃过饭了吗？"];
    [c2 send:@"没有呢，你打算请客？"];

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
