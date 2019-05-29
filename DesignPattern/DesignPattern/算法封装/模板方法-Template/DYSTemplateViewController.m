//
//  DYSTemplateViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/3/13.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 定义一个操作中的算法的骨架，而将一些步骤延迟到子类中。TemplateMethod使得子类可以不改变一个算法的结构即可重定义该算法的某些特定步骤。
 
 类行为模式
 
 参与者：
 ・AbstractClass(抽象类)
 定义抽象的原语操作(primitive operation)，具体的⼦子类将重定义它们以实现⼀一个算法的个步骤。
 
 实现一个模板方法，定义⼀个算法的骨架。该模板方法不仅调用原语操作，也调用在AbstractClass或其他对象中的操作。

 ConcreteClass(具体类)
 实现原语操作以完成算法中与特定子类相关的步骤。
 
 */
#import "DYSTemplateViewController.h"
#import "DYSAnsweredPaper1.h"
#import "DYSAnsweredPaper2.h"

@interface DYSTemplateViewController ()

@end

@implementation DYSTemplateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    
    DYSAnsweredPaper1 *paper1 = [DYSAnsweredPaper1 new];
    [paper1 question1];
    [paper1 question2];
    
    DYSAnsweredPaper2 *paper2 = [DYSAnsweredPaper2 new];
    [paper2 question1];
    [paper2 question2];
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
