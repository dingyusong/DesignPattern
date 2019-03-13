//
//  DYSStrategyViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/3/13.
//  Copyright © 2019 丁玉松. All rights reserved.
//

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
//    CashNormal *cash = [[CashNormal alloc] init];
    
    //打八折
    CashRebate *cash = [[CashRebate alloc] initWithMoneyRebate:0.8];
    
    //满100减10块
//    CashReturn *cash = [[CashReturn alloc] initWithMoneyCondition:100 moneyReturn:10];
    
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
