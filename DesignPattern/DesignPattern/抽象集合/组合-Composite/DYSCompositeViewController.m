//
//  DYSCompositeViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

/*
 意图：
 将对象组合成树形结构以表示“部分・整体”的层次结构。Composite使得⽤用户对单个对象和组合对象的使⽤用具有一致性。
 
 适⽤用性：
 以下情况使⽤用Composite
 ・你想表示对象的部分~整体层次结构。
 ・你希望⽤用户忽略略组合对象与单个对象的不不同，⽤用户将统⼀一地使⽤用组合结构中的所有对象
 
 参与者：
 1.Component
 
 为组合中的对象声明接口。
 在适当的情况下，实现所有类共同的缺省行为。
 声明一个接口⽤用于访问和管理理Component的⼦组件。
 在递归结构中定义⼀个接口，用于访问一个父部件，并在合适的情况下实现它。
 
 本例：DYSCompanyComponentProtocol
 
 2.Leaf
 
 在组合中标识叶节点，叶节点没有子节点
 在组合中定义图元对象的行为

 本例：DYSHRDepartment DYSFinanceDepartment
 
 3.Composite
 定义有子部件的部件的行为
 存储子部件
 在Component接口中实现与子部件有关的操作。
 
 本例：DYSCompany
 
 4.Client
 通过Component接口操纵组合部件的对象。
 
 */
#import "DYSCompositeViewController.h"

#import "DYSCompany.h"
#import "DYSHRDepartment.h"
#import "DYSFinanceDepartment.h"


@interface DYSCompositeViewController ()

@end

@implementation DYSCompositeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self demo01];
}

- (void)demo01 {
    DYSCompany *root = [[DYSCompany alloc]initWithName:@"总公司"];
    [root add:[[DYSHRDepartment alloc]initWithName:@"总公司人力资源部"]];
    [root add:[[DYSFinanceDepartment alloc]initWithName:@"总公司财务部"]];
    
    DYSCompany *comp = [[DYSCompany alloc]initWithName:@"上海华东分公司"];
    [comp add:[[DYSHRDepartment alloc]initWithName:@"上海华东分公司人力资源部"]];
    [comp add:[[DYSFinanceDepartment alloc]initWithName:@"上海华东分公司财务部"]];
    [root add:comp];
    
    DYSCompany *comp1 = [[DYSCompany alloc]initWithName:@"杭州办事处"];
    [comp1 add:[[DYSHRDepartment alloc]initWithName:@"杭州办事处人力资源部"]];
    [comp1 add:[[DYSFinanceDepartment alloc]initWithName:@"杭州办事处财务部"]];
    [root add:comp1];
    
    NSLog(@"结构图:----------------------------");
    [root display];
    NSLog(@"职责:---------------------------");
    [root lineofDuty];

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
