//
//  DYSSingletonViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/9.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSSingletonViewController.h"
#import "People.h"

@interface DYSSingletonViewController ()

@end

@implementation DYSSingletonViewController

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
