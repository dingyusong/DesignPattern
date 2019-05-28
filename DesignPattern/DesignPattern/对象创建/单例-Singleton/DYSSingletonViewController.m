//
//  DYSSingletonViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/9.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 保证一个类仅有一个实例，并提供一个访问他的全局访问点。
 
 参与者：
 Singleton，定义一个instance操作，允许客户访问其唯一实例。Instance是一个类操作（即Smalltalk中的一个类方法和C++中的一个静态成员函数）。
 
 协作：
 客户只能通过iSingleton的Instance操作访问一个Singleton实例。
 
 
 */
#import "DYSSingletonViewController.h"
#import "People.h"

@interface DYSSingletonViewController ()

@end

@implementation DYSSingletonViewController
/**
 在一个与世隔绝的小岛上，水缸里的水资源，被小岛上的人共享，有人往里面加水，有人从里面取水喝。
 
 单例模式的特点在于全局唯一，共享此对象，使用场景在于全局共享的数据的存取，很显然好处是节省系统资源，在全局共享模式下具有天然优势。
 
 缺点：因为只能存在一个实例对象，原则上不能继承，所以也实现不了多态。新增和修改功能，只能修改源代码，违反了开闭原则。同时要求外界只能通过特定方法使用，关系外界逻辑，对外界使用有限制，所以也违反了单一职责原则
 
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self demo01];
}

- (void)demo01 {
    People *people1 = [People new];
    [people1 drinkWater];
    
    People *people2 = [People new];
    [people2 drinkWater];
    
    People *people3 = [People new];
    [people3 collectWater];
    
    NSFileManager *manager = [[NSFileManager alloc] init];
    NSFileManager *manager2 = [NSFileManager defaultManager];
    
    NSLog(@"\n%p\n%p", manager, manager2);
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
