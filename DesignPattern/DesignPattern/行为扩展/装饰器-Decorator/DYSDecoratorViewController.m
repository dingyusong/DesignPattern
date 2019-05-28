//
//  DYSDecoratorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 动态地给⼀个对象添加一些额外的职责。就增加功能来说，Decorator模式更为灵活。
 
 .适⽤用
 以下情况使⽤用Decorator
 ・在不不影响其他对象的情况下，以动态、透明的⽅方式给单个对象添加
 ・处理理那些可以撤消的职责
 ・当不能采用生成子类的方法进⾏扩充时。一种情况是，可能有大量独立的扩展，为每一种组合将产⽣生⼤量的⼦子类，使得子类数目呈爆炸性增长。另一种情况可能是因为定义被隐藏，或类定义不能用于生成子类
 
 参与者：
 
 1.Component
 定义一个对象接口，可以给这些对象动态的添加职责
 本例：DYSAbstractComponent
 
 2.ConcreteComponent
 定义一些对象可以给这个对象添加一些职责
 本例：DYSComponent
 
 3.Decorator
 维持一个指向Component对象的指针（重点），并定义一个与Component接口一直的接口
 本例：DYSAbstractDecorator
 
 4.ConcreteDecorator
 像组件添加职责。
 本例：DYSDecorator1 DYSDecorator2
 
 */

#import "DYSDecoratorViewController.h"
#import "DYSComponent.h"
#import "DYSDecorator1.h"
#import "DYSDecorator2.h"

@interface DYSDecoratorViewController ()

@end

@implementation DYSDecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    //原始对象
    DYSAbstractComponent *component = [DYSComponent new];
    [component operate];
    
    //装饰对象
    DYSDecorator1 *decorator1 = [DYSDecorator1 new];
    decorator1.component = component;
    [decorator1 operate];
    //装饰对象
    DYSDecorator2 *decorator2 = [DYSDecorator2 new];
    decorator2.component = decorator1;
    [decorator2 operate];
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
