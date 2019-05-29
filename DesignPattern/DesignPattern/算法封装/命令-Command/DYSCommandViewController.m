//
//  DYSCommandViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 将⼀个请求封装为⼀个对象，从而使你可⽤不同的请求对客户进行参数化;对请求排队或记录日志，以及支持可撤销的操作。
 
 参与者：
 1.Command
 声明执行操作的接口。
 
 接收接口和执行接口。
 
 本例：OrderProtocol
 
 2.ConcreteCommand
 将⼀个接收者对象绑定于一个动作
 调用接收者相应的操作，以实现Execute
 
 本例：DYSMuttonOrder DYSChickenOrder DYSDuckOrder
 
 3.Client
 创建一个具体命令对象并设定它的接受者
 本例：DYSCustomer
 
 4.Invoker
 要求该命令执行这个请求。
 本例：DYSWaiter
 
 5.Receiver
 知道如何实施与执行一个请求相关的操作。任何类都可能作为一个接收者
 
 本例：DYSWorker
 
 7.协作
 ・Client创建一个ConcreteCommand对象并指定它的Receiver对象
 ・某Invoker对象存储该ConcreteCommand对象
 ・该Invoker通过调⽤用Command对象的Execute操作来提交⼀个请求。若该命令是可撤销的，ConcreteCommand就在执行Excute操作之前存储当前状态以⽤用于取消该命令。
 ・ConcreteCommand对象对调用它的Receiver的⼀些操作以执行该请求。
 */

#import "DYSCommandViewController.h"
#import "DYSWaiter.h"
#import "DYSCustomer.h"

@interface DYSCommandViewController ()

@end

@implementation DYSCommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    //waiter用于接收各种类型的order。waiter是请求接收者。
    //接收不同customer产生的不同order，并且都存入waiter这个接受者中,type表示不同类型的order。
    DYSWaiter *waiter = [[DYSWaiter alloc]init];
    //顾客一
    DYSCustomer *customer = [[DYSCustomer alloc]init];
    DYSAbstractOrder *customerOrder1 = [customer pushOrderWithString:@"顾客一要十串羊肉" type:orderTypeMutton];
    DYSAbstractOrder *customerOrder2 = [customer pushOrderWithString:@"顾客一要十串鸭肉" type:orderTypeDuck];
    [waiter addOrder:customerOrder1];
    [waiter addOrder:customerOrder2];
    //顾客二
    DYSCustomer *customer1 = [[DYSCustomer alloc]init];
    DYSAbstractOrder *customer1Order1 = [customer1 pushOrderWithString:@"顾客二要二十串鸡肉" type:orderTypeChicken];
    DYSAbstractOrder *customer1Order2 = [customer1 pushOrderWithString:@"顾客二要二十串鸭肉" type:orderTypeDuck];
    [waiter addOrder:customer1Order1];
    [waiter addOrder:customer1Order2];
    
    //顾客取消Order
    [waiter deleteOrder:customer1Order2];
    
    //waiter发送order，背后有一个DYSWorker这个单列作为行为实现者来处理具体的order。命令接收完毕，开始发送命令。
    [waiter notifyOrder];

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
