//
//  DYSAdapterViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

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
    
    DYSStudent1 *student1 = [DYSStudent1 new];
    student1.name = @"张三";
    DYSStudent1 *student2 = [DYSStudent1 new];
    student2.name = @"李四";
    DYSStudent1 *student3 = [DYSStudent1 new];
    student3.name = @"王麻子";
    
    DYSPeople *people1 = [[DYSPeople alloc] initWithXingMing:@"小张"];
    DYSPeople *people2 = [[DYSPeople alloc] initWithXingMing:@"小李"];
    DYSPeople *people3 = [[DYSPeople alloc] initWithXingMing:@"小王"];
    
    DYSAdapter *adapterPeople1 = [[DYSAdapter alloc] initWithPeople:people1];
    DYSAdapter *adapterPeople2 = [[DYSAdapter alloc] initWithPeople:people2];
    DYSAdapter *adapterPeople3 = [[DYSAdapter alloc] initWithPeople:people3];
    
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
