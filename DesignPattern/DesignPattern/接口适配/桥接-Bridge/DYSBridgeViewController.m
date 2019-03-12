//
//  DYSBridgeViewController.m
//  DesignPattern
//
//  Created by DingYusong on 2019/3/12.
//  Copyright © 2019 丁玉松. All rights reserved.
//

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
    DYSHandsetGame *game = [DYSHandsetGame new];
    DYSHandsetAddressList *address = [DYSHandsetAddressList new];
    
    DYSAbstractHandsetBrand *brand = [DYSHandsetBrandM new];
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
