//
//  DYSSimpleFactoryViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/24.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSSimpleFactoryViewController.h"
#import "OperateBase.h"
#import "OperateFactory.h"

@interface DYSSimpleFactoryViewController ()

@end

@implementation DYSSimpleFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

-(void)demo01 {
    //第四种：简单工厂模式。新增一种算法的话，除了增加一个Operate子类外还要修改OperateFactory工厂类，这不符合开放关闭原则。
    OperateBase *operate = [OperateFactory createOperate:@"+"];
    operate.numberA = 1;
    operate.numberB = 2;
    CGFloat result = operate.GetResult;
    NSLog(@"%.2f",result);

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
