//
//  DYSVisitorViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSVisitorViewController.h"

#import "DYSElementMan.h"
#import "DYSElementWoman.h"
#import "DYSObjectStructure.h"

#import "DYSVisitor1.h"
//新增一个访问者
#import "DYSVisitor2.h"

@interface DYSVisitorViewController ()

@end

@implementation DYSVisitorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    DYSObjectStructure *structure = [DYSObjectStructure new];
    DYSAbstractElement *man = [DYSElementMan new];
    [structure add:man];
    
    DYSAbstractElement *woman = [DYSElementWoman new];
    [structure add:woman];
    
    DYSVisitor1 *vistor1 = [DYSVisitor1 new];
    [structure accept:vistor1];
    
    DYSVisitor2 *vistor2 = [DYSVisitor2 new];
    [structure accept:vistor2];

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
