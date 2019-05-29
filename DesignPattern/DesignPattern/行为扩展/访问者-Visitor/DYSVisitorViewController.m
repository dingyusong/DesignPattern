//
//  DYSVisitorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 访问者-Visitor
 意图：
 表示一个作用于某对象结构中的各元素的操作。它使你可以在不改变各元素的类的前提下定义作⽤用于这些元素的新操作。
 
 参与者：
 1.Visitor(访问者)
 为该对象结构中ConcreteElement的每一个类声明⼀一个Visit操作。该操作的名字和特征标识了发送Visit请求给该访问者的那个类。这使得访问者可以确定正被访问元素的具体的类。这样访问者就可以通过该元素的特定接⼝直接访问他。
 
 2.ConcreteVisitor(具体访问者)
 实现每个由Visitor声明的操作。每个操作实现本算法的⼀部分，⽽该算法片断乃是对应于结构中对象的类。ConcreteVisitor为该算法提供了上下⽂并存储它的局部状态。这一状态常常在遍历该结构的过程中累积结果。
 
 3.Element(元素)
 定义一个Accept操作，它以一个访问者为参数。
 
 4.ConcreteElement(具体元素)
 实现Accept操作，该操作以⼀个访问者为参数。
 
 5.ObjectStructure(对象结构)
 能枚举它的元素
 可以提供一个高层的接⼝以允许访问者访问它的元素。
 可以是一个复合或是⼀个集合，如⼀个列表或一个无序集合。
 
 */
#import "DYSVisitorViewController.h"

#import "DYSElementMan.h"
#import "DYSElementWoman.h"
#import "DYSObjectStructure.h"

#import "DYSVisitor1.h"
//新增一个访问者
#import "DYSVisitor2.h"

@interface DYSVisitorViewController ()

@end

@implementation DYSVisitorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    DYSObjectStructure *structure = [DYSObjectStructure new];
    DYSAbstractElement *man = [DYSElementMan new];
    [structure add:man];
    
    DYSAbstractElement *woman = [DYSElementWoman new];
    [structure add:woman];
    
    DYSVisitor1 *vistor1 = [DYSVisitor1 new];
    [structure accept:vistor1];
    
    DYSVisitor2 *vistor2 = [DYSVisitor2 new];
    [structure accept:vistor2];

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
