//
//  DYSIteratorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

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
