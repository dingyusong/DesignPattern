//
//  DYSIteratorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 提供一种⽅法顺序访问一个聚合对象中各个元素，而又不需暴露该对象的内部表示。
 
 参与者：
 1.Iterator(迭代器）
 迭代器器定义访问和遍历元素的接口
 
 2.Concretelterator(具体迭代器）
 具体迭代器实现迭代器接口。
 对该聚合遍历时跟踪当前位置。
 
 3.Aggregate (聚合)
 聚合定义创建相应迭代器对象的接口。
 
 4.ConcreteAggregate(具体聚合）
 具体聚合实现创建相应迭代器的接⼝，该操作返回Concretelterator的一个适当的实例。
 */
#import "DYSIteratorViewController.h"

@interface DYSIteratorViewController ()

@end

@implementation DYSIteratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = @[@"a",@"b",@"c",@"d",@"e",@"f",@"g",];
    
    NSEnumerator *em = [array objectEnumerator];
    
    while (em.nextObject) {
        //        NSString *obj = em.nextObject;
        NSLog(@"aaa");
    };
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *objStr = obj;
        NSLog(@"%@",objStr);
    }];
    
    for (NSString *item in array) {
        NSLog(@"%@",item);
    }

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
