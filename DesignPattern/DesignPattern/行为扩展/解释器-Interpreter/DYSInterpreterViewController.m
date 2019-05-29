//
//  DYSInterpreterViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

/*
 意图：
 给定一个语⾔，定义它的文法的一种表示，并定义一个解释器器，这个解释器器使⽤该表示 来解释语⾔言中的句子。
 
 参与者：
 1.AbstractExpression
 声明⼀一个抽象的解释操作，这个接⼝为抽象语法树中所有的节点所共享。
 
 2.下erminalExpression(终结符表达式）
 实现与文法中的终结符相关联的解释操作。
 一个句子中的每个终结符需要该类的一个实例。
 
 3.NonterminalExpression(⾮非终结符表达式）
 
 4.Context（上下文）
 
 5.Client（客户）
 构建(或被给定)表示该⽂文法定义的语⾔言中⼀一个特定的句句⼦子的抽象语法树。该抽象 法树由NonterminalExpression和TerminalExpression的实例例装配
 调⽤用解释操作。
 
 */
#import "DYSInterpreterViewController.h"
#import "DYSContext.h"
#import "DYSTerminalExpression.h"
#import "DYSNonterminalExpression.h"

@interface DYSInterpreterViewController ()

@end

@implementation DYSInterpreterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    DYSContext *context = [[DYSContext alloc]initWithInput:@"12345"];
    NSMutableArray *list = [[NSMutableArray alloc]init];
    
    [list addObject:[[DYSTerminalExpression alloc]init]];
    
    [list addObject:[[DYSNonterminalExpression alloc]init]];
    
    [list addObject:[[DYSTerminalExpression alloc]init]];
    
    [list addObject:[[DYSTerminalExpression alloc]init]];
    
    for(DYSAbstractExpression *exp in list) {
        [exp interpret:context];
    }

}

- (void)demo02 {
    
//    NSDictionary *dataDic = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingAllowFragments error:nil];

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
