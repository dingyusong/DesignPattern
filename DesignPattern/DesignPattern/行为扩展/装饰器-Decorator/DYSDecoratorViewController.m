//
//  DYSDecoratorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSDecoratorViewController.h"
#import "DYSComponent.h"
#import "DYSDecorator1.h"
#import "DYSDecorator2.h"

@interface DYSDecoratorViewController ()

@end

@implementation DYSDecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    DYSAbstractComponent *component = [DYSComponent new];
    [component operate];
    
    DYSDecorator1 *decorator1 = [DYSDecorator1 new];
    decorator1.component = component;
    [decorator1 operate];
    
    DYSDecorator2 *decorator2 = [DYSDecorator2 new];
    decorator2.component = component;
    [decorator2 operate];
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
