//
//  ViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2018/12/28.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, copy) NSArray *dataSourceArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设计模式";
    self.dataSourceArray = @[
                             @{
                                 @"title":@"设计模式体验",
                                 @"array":@[
                                         @{
                                             @"title":@"设计模式体验1",
                                             @"page":@"DYSDemo01ViewController"
                                             }
                                         
                                         ]
                                 },
                             ];
    self.tableView.rowHeight = 50;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSourceArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *dict = [self.dataSourceArray objectAtIndex:section];
    NSArray *array = [dict objectForKey:@"array"];
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
    }
    
    
    NSDictionary *sectionDict = [self.dataSourceArray objectAtIndex:indexPath.section];
    NSArray *array = [sectionDict objectForKey:@"array"];
    NSDictionary *dict = [array objectAtIndex:indexPath.row];
    cell.textLabel.text = [dict objectForKey:@"title"];

    
    return cell;
}

#pragma mark - UITableViewDelegate

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDictionary *sectionDict = [self.dataSourceArray objectAtIndex:section];
    return [sectionDict objectForKey:@"title"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *sectionDict = [self.dataSourceArray objectAtIndex:indexPath.section];
    NSArray *array = [sectionDict objectForKey:@"array"];
    NSDictionary *dict = [array objectAtIndex:indexPath.row];

    NSString *classString = [dict objectForKey:@"page"];
    UIViewController *vc = [NSClassFromString(classString) new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
