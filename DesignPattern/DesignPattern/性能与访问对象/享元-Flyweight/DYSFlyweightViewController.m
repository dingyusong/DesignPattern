//
//  DYSFlyweightViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 运用共享技术有效的支持大量细粒度的对象。
 
 参与者：
 1.Flyweight
 描述一个接口，通过这个接⼝flyweight可以接受并作用于外部状态
 本例：DYSWebSideProtocol
 
 2.ConcreteFlyweight
 实现Flyweight接口，并为内部状态(如果有的话)增加存储空间。ConcreteFlyweight对象必须是可共享的。它所存储的状态必须是内部的;即，它必 须独⽴立于ConcreteFlyweight对象的场景。
 
 本例：DYSConcreteWebSite
 
 3.UnsharedConcreteFlyweight
 并非所有的Flyweight⼦子类都需要被共享。Flyweight接口使共享成为可能，但它并不强制共享。在Flyweight对象结构的某些层次UnsharedConcreteFlyweight对象通常将ConcreteFlyweight对象作为⼦节点。
 
 4.FlyweightFactory
 创建并管理理flyweight
 确保合理理地共享flyweight。当用户请求⼀个flyweight时，FlyweightFactory对象提供一个已创建的实例例或者创建⼀个(如果不不存在的话）
 
 
 5.Client
 维持⼀一个对flyweight的引用
 计算或存储一个(多个)flyweight的外部状态
 
 */
#import "DYSFlyweightViewController.h"
#import "DYSWebSiteFactory.h"

@interface DYSFlyweightViewController ()

@end

@implementation DYSFlyweightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01{
    DYSWebSiteFactory *facoty = [[DYSWebSiteFactory alloc]init];
    id<DYSWebSideProtocol> fx = [facoty getWebSiteCategory:@"产品展示"];
    DYSFWUser *user = [[DYSFWUser alloc]init];
    user.name = @"小菜";
    [fx use:user];
    
    id<DYSWebSideProtocol> fy = [facoty getWebSiteCategory:@"产品展示"];
    DYSFWUser *user1 = [[DYSFWUser alloc]init];
    user1.name = @"大鸟";
    [fy use:user1];
    
    id<DYSWebSideProtocol> fz = [facoty getWebSiteCategory:@"博客"];
    DYSFWUser *user2 = [[DYSFWUser alloc]init];
    user2.name = @"咪咪";
    [fz use:user2];
    
    id<DYSWebSideProtocol> fz1 = [facoty getWebSiteCategory:@"博客"];
    DYSFWUser *user21 = [[DYSFWUser alloc]init];
    user21.name = @"咪咪1";
    [fz1 use:user21];
    
    id<DYSWebSideProtocol> fz2 = [facoty getWebSiteCategory:@"博客"];
    DYSFWUser *user22 = [[DYSFWUser alloc]init];
    user22.name = @"咪咪2";
    [fz2 use:user22];
    
    
    //共享（产品展示）和（博客）。
    NSInteger count = [facoty getWebSiteCount];
    NSLog(@"个数：%d",count);
}

- (void)demo02 {
    //tableViewCell的复用。
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
