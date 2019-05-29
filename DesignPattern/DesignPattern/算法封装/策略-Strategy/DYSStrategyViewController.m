//
//  DYSStrategyViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/3/13.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 定义一系列的算法，把它们一个个封装起来，并且使它们可相互替换。本模式使得算法可独立于使用它的客户⽽变化。
 
 参与者：
 1.Strategy(策略）
 定义所有支持的算法的公共接⼝。Context使用这个接口来调用某ConcreteStrategy定义的算法。
 
 2.ConcreteStrategy(具体策略)
 以Strategy接⼝实现某具体算法。
 
 3.Context(上下⽂）
 用⼀个ConcreteStrategy对象来配置。
 维护一个对Strategy对象的引用。
 可定义一个接口来让Stategy访问它的数据。
 
 协作：
 Strategy和Context相互作⽤以实现选定的算法。当算法被调⽤用时，Context可以将该算法所需要的所有数据都传递给该Stategy。或者，Context可以将自身作为⼀个参数传递给Strategy操作。这就让Strategy在需要时可以回调Context。
 
 Context将它的客户的请求转发给它的Strategy。客户通常创建并传递⼀个对象给该Context;这样，客户仅与Context交互。通常有一系列的ConcreteStrategy类可供客户从中选择。
 
 */
#import "DYSStrategyViewController.h"

#import "CashRebate.h"
#import "CashReturn.h"
#import "CashNormal.h"

#import "CashContext.h"

@interface DYSStrategyViewController ()

@end

@implementation DYSStrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self demo01];
}

- (void)demo01 {
    // 正常收费
//    id<CashSuper>  cash = [[CashNormal alloc] init];
    
    //打八折
    id<CashSuper> cash = [[CashRebate alloc] initWithMoneyRebate:0.8];
    
    //满100减10块
//    id<CashSuper>  cash = [[CashReturn alloc] initWithMoneyCondition:100 moneyReturn:10];
    
    CashContext *context = [[CashContext alloc] initWithCashSuper:cash];
    //买100元的货物实际应收计算
    CGFloat realPay = [context getResult:100];
    NSLog(@"%.2f",realPay);
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
