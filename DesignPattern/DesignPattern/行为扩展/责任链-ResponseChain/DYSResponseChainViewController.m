//
//  DYSResponseChainViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSResponseChainViewController.h"
#import "DYSChainBoss.h"
#import "DYSChainZhuGuan.h"
#import "DYSChainZongJinLi.h"

#import "DYSRequest.h"

@interface DYSResponseChainViewController ()

@end

@implementation DYSResponseChainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    
    DYSAbstractChain *zhuGuan = [[DYSChainZhuGuan alloc] initWithName:@"丁哥"];
    DYSAbstractChain *zongJinLi = [[DYSChainZongJinLi alloc] initWithName:@"李经理"];
    DYSAbstractChain *boss = [[DYSChainBoss alloc] initWithName:@"扬总"];
    
    zhuGuan.superior = zongJinLi;
    zongJinLi.superior = boss;
    
    DYSRequest *request = [[DYSRequest alloc] init];
    request.requestType = @"请假";
    request.number = 3;
    
    [zhuGuan dealWithRequest:request];
    
    request.number = 8;
    
    [zhuGuan dealWithRequest:request];
    
    request.number = 20;
    
    [zhuGuan dealWithRequest:request];

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
