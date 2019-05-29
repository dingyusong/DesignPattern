//
//  DYSResponseChainViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 1. 使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的藕合关系。将这
 些对象连成一条链，并沿着这条链传递该请求，直到有⼀个对象处理理它为止。
 
 
 参与者：
 1.Handler
 定义一个处理请求的接口
 实现后继链

 自己和后继者遵循一套相同的接口。
 [self.superior dealWithRequest:request];
 
 本例： DYSChainProtocol DYSAbstractChain
 
 2.ConcreteHandler
 处理理它所负责的请求。
 可访问它的后继者。
 如果可处理理该请求，就处理理之;否则将该请求转发给它的后继者。
 
 3.client
 向链上具体的请求者对象（ConcreteHandler）提交请求。
 
 本例：DYSChainZhuGuan DYSChainZongJinLi DYSChainBoss
 
 
 协作：
 当客户提交⼀一个请求时，请求沿链传递直⾄至有⼀一个ConcreteHandler对象负责处理它。
 */
#import "DYSResponseChainViewController.h"
#import "DYSChainBoss.h"
#import "DYSChainZhuGuan.h"
#import "DYSChainZongJinLi.h"

#import "DYSRequest.h"

@interface DYSResponseChainViewController ()

@end

@implementation DYSResponseChainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    
    id<DYSChainProtocol> zhuGuan = [[DYSChainZhuGuan alloc] initWithName:@"丁哥"];
    id<DYSChainProtocol> zongJinLi = [[DYSChainZongJinLi alloc] initWithName:@"李经理"];
    id<DYSChainProtocol> boss = [[DYSChainBoss alloc] initWithName:@"扬总"];
    
    zhuGuan.superior = zongJinLi;
    zongJinLi.superior = boss;
    
    DYSRequest *request = [[DYSRequest alloc] init];
    request.requestType = @"请假";
    request.number = 3;
    
    [zhuGuan dealWithRequest:request];
    
    request.number = 8;
    
    [zhuGuan dealWithRequest:request];
    
    request.number = 20;
    
    [zhuGuan dealWithRequest:request];

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
