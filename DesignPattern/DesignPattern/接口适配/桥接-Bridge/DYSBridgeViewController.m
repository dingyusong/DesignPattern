//
//  DYSBridgeViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 将抽象部分与他的实现部分分离，使他们可以独立地变化。
 
 
 参与者：
 1.Abstraction
 定义抽象类的接口
 维护一个指向Implementor类型对象的指针
 
 本例：DYSAbstractHandsetBrandProtocol    指向 id<DYSHandsetSoftProtocol> soft
 
 2.RefinedAbstraction
 扩充由Abstraction定义的接口
 
 本例：DYSAbstractHandsetBrandRefinedProtocol+DYSAbstractHandsetBrand
 DYSHandsetBrandM  DYSHandsetBrandN
 
 3.Implementor
 定义实现类的接口，该接口不一定要与Abstraction的接⼝口完全⼀一致;事实上这两个接⼝口可以完全不不同。⼀一般来讲，Implementor接⼝口仅提供基本操作，⽽Abstraction则 定义了基于这些基本操作的较高层次的操作。
 
 本例：DYSHandsetSoftProtocol
 
 4.ConcreteImplementor
 实现Implementor接口并定义他的具体实现。
 本例：DYSHandsetAddressList  DYSHandsetGame
 
 
 协作：
 ・ Abstraction将client的请求转发给它的Implementor对象
 
 */
#import "DYSBridgeViewController.h"

#import "DYSHandsetAddressList.h"
#import "DYSHandsetGame.h"

#import "DYSHandsetBrandM.h"
#import "DYSHandsetBrandN.h"

@interface DYSBridgeViewController ()

@end

@implementation DYSBridgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}


- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    id<DYSHandsetSoftProtocol> game = [DYSHandsetGame new];
    id<DYSHandsetSoftProtocol> address = [DYSHandsetAddressList new];
    
    id<DYSAbstractHandsetBrandRefinedProtocol> brand = [DYSHandsetBrandM new];
    brand.brandName = @"摩托诺拉";
    
    [brand setSoft:game];
    [brand run];
    
    [brand setSoft:address];
    [brand run];
    
    brand = [DYSHandsetBrandN new];
    brand.brandName = @"诺基亚";
    
    [brand setSoft:game];
    [brand run];
    
    [brand setSoft:address];
    [brand run];

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
