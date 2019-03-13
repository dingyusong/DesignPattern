//
//  DYSTemplateViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/3/13.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSTemplateViewController.h"
#import "DYSAnsweredPaper1.h"
#import "DYSAnsweredPaper2.h"

@interface DYSTemplateViewController ()

@end

@implementation DYSTemplateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
}

- (void)demo01 {
    // Do any additional setup after loading the view, typically from a nib.
    
    DYSAnsweredPaper1 *paper1 = [DYSAnsweredPaper1 new];
    [paper1 question1];
    [paper1 question2];
    
    DYSAnsweredPaper2 *paper2 = [DYSAnsweredPaper2 new];
    [paper2 question1];
    [paper2 question2];
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
