//
//  DYSRule01ViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/27.
//  Copyright © 2019 丁玉松. All rights reserved.
//

/*
 
 
 定义:
 应该有且仅有一个原因引起类的变更（There should never be more than one reason for a class to change）
 如果一个类有多个职责，这些职责就耦合在了一起。当一个职责发生变化时，可能会影响其它的职责。另外，多个职责耦合在一起会影响复用性。
 此原则的核心是解耦和增强内聚性。
 
 问题场景：
 类A负责两个职责：职责P1，职责P2。当由于职责P1需求发生改变而需要修改类A时，有可能会导致原本运行正常的职责P2功能发生故障。
 
 解决方案：
 遵循SRP。分别建立两个类A1、A2，使A1完成职责P1，A2完成职责P2。这样，当修改类A1时，不会影响到职责A2；同理，当修改A2时，也不会影响到职责P1。
 
 优点：
 1.降低类的复杂度，一个类只负责一项职责，其逻辑肯定要比负责多项职责简单的多。
 2.提高类的可读性，提高系统的可维护性。
 3.变更引起的风险降低，变更是必然的，如果SRP遵守的好，当修改一个功能时，可以显著降低对其他功能的影响。
 
 参考文档：
 设计模式心法之单一职责原则：https://www.jianshu.com/p/c1073bd9b080
 聊聊设计模式原则（一） -- 单一职责原则：https://www.jianshu.com/p/4af9f127c866
 8 种模式帮你告别 Massive View Controller：https://toutiao.io/posts/xxr604/preview
 */

#import "DYSRule01ViewController.h"
#import "DYSRule01Factory01.h"

#import "DYSRule01FactoryA.h"
#import "DYSRule01FactoryB.h"

#import "DYSRule01Demo03FactoryA.h"
#import "DYSRule01Demo03FactoryB.h"

@interface DYSRule01ViewController ()

@end

@implementation DYSRule01ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self demo01];
//    [self demo02];
    [self demo03];
}

- (void)demo01 {
    //不符合单一职责原则，改动B的生产流程，会影响A。
    DYSRule01Factory01 *f01 = [DYSRule01Factory01 new];
    [f01 createProductA];
    [f01 createProductB];
}

- (void)demo02 {
    DYSRule01FactoryA *f01 = [DYSRule01FactoryA new];
    [f01 createProductA];
    
    DYSRule01FactoryB *f02 = [DYSRule01FactoryB new];
    [f02 createProductB];
}

- (void)demo03 {
    DYSRule01Demo03FactoryA *f01 = [DYSRule01Demo03FactoryA new];
    [f01 createProduct];
    
//    DYSRule01Demo03FactoryB *f02 = [DYSRule01Demo03FactoryB new];
//    [f02 createProduct];

    id<DYSRule01AbstractFactoryProtocol> f02 = [DYSRule01Demo03FactoryB new];
//    id<DYSRule01AbstractFactoryProtocol> f02 = [DYSRule01Demo03FactoryA new];
    [f02 createProduct];

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
