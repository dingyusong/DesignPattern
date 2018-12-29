//
//  ViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2018/12/28.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, copy) NSArray *dataSourceArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设计模式";
    self.dataSourceArray = @[
        @{
            @"title": @"对象创建",
            @"array": @[
                @{
                   @"title": @"原型",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"工厂方法",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"生成器",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"单例",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"接口适配",
            @"array": @[
                @{
                   @"title": @"适配器",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"桥接",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"外观",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"对象去耦合",
            @"array": @[
                @{
                   @"title": @"中介者",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"观察者",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"抽象集合",
            @"array": @[
                @{
                   @"title": @"组合",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"迭代器",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"行为扩展",
            @"array": @[
                @{
                   @"title": @"访问者",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"装饰器",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"责任链",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"算法封装",
            @"array": @[
                @{
                   @"title": @"模板方法",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"策略",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"命令",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"性能与访问对象",
            @"array": @[
                @{
                   @"title": @"享元",
                   @"page": @"DYSDemo01ViewController"
                },
                @{
                   @"title": @"代理",
                   @"page": @"DYSDemo01ViewController"
                },
            ]
        },
        @{
            @"title": @"对象状态",
            @"array": @[
                @{
                   @"title": @"备忘录",
                   @"page": @"DYSDemo01ViewController"
                },
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
