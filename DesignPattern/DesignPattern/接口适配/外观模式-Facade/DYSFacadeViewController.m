//
//  DYSFacadeViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 为⼦子系统中的⼀一组接⼝口提供⼀一个⼀一致的界⾯面，Facade模式定义了了⼀一个⾼高层接⼝口，这个接⼝口使得这⼀一⼦子系统更加容易易使用。
 
 参与者：
 1.Facade
 ⼀一知道哪些⼦子系统类负责处理理
 ⼀一将客户的请求代理理给适当的⼦子系统
 2.Subsystem classes (Scanner. Parser、
 ⼀一实现⼦子系统的
 ⼀一处理理由Facade对象指派的 ⼀一没有facade的任何相关信息;即没有指向facade的指针
 
 */
#import "DYSFacadeViewController.h"
#import "DYSFacade.h"

@interface DYSFacadeViewController ()

@end

@implementation DYSFacadeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    DYSFacade *facade = [DYSFacade new];
    [facade buyFund];
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
