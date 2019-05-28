//
//  DYSAdapterViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

/*
 
 适⽤性：
 以下情况使⽤用Adapter
 ・你想使用一个已经存在的类，⽽它的接口不符合你的需求。
 ・你想创建一个可以复用的类，该类可以与其他不相关的类或不可预⻅的类(即那些接口可能不一定兼容的类)协同工作。
 ・(仅适⽤用于对象Adapter)你想使⽤用⼀一些已经存在的⼦子类，但是不可能对每一个都进⾏子类化以匹配它们的接⼝。对象适配器可以适配它的⽗类接口。
 
 参与者：
 1.Target：
 定义Client使用的与特殊领域相关的接口。
 抽象类/接口
 本例：DYSAdapterProtocol
 
 2.Client：
 与符合target接口的对象协同
 实体类
 本例：DYSCourse
 
 3.Adaptee
 定义一个已经存在的接口，这个接口需要适配。需要适配的类。
 实体类
 本例：DYSPeople
 
 4.Adapter
 对Adaptee接口与Target接口进行适配。遵循Target接口
 实体类
 本例：DYSAdapter
 
 
 面向接口编程：
 DYSCourse 不知道 DYSAdapter的存在 ，直接使用接口id<DYSAdapterProtocol>。
 
 */
#import "DYSAdapterViewController.h"

#import "DYSAdapter.h"
#import "DYSCourse.h"
#import "DYSPeople.h"

#import "DYSStudent1.h"

@interface DYSAdapterViewController ()

@end

@implementation DYSAdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self demo01];
}

- (void)demo01{
    // Do any additional setup after loading the view from its nib.
    
    id<DYSAdapterProtocol> student1 = [DYSStudent1 new];
    student1.name = @"张三";
    id<DYSAdapterProtocol> student2 = [DYSStudent1 new];
    student2.name = @"李四";
    id<DYSAdapterProtocol> student3 = [DYSStudent1 new];
    student3.name = @"王麻子";
    
    DYSPeople *people1 = [[DYSPeople alloc] initWithXingMing:@"小张"];
    DYSPeople *people2 = [[DYSPeople alloc] initWithXingMing:@"小李"];
    DYSPeople *people3 = [[DYSPeople alloc] initWithXingMing:@"小王"];
    
    id<DYSAdapterProtocol> adapterPeople1 = [[DYSAdapter alloc] initWithPeople:people1];
    id<DYSAdapterProtocol> adapterPeople2 = [[DYSAdapter alloc] initWithPeople:people2];
    id<DYSAdapterProtocol> adapterPeople3 = [[DYSAdapter alloc] initWithPeople:people3];
    
    DYSCourse *course = [DYSCourse new];
    [course addStaff:student1];
    [course addStaff:student2];
    [course addStaff:student3];
    
    [course addStaff:adapterPeople1];
    [course addStaff:adapterPeople2];
    [course addStaff:adapterPeople3];
    
    [course introduceSelfOneByOne];

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
