//
//  DYSDemo03ViewController.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/13.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSDemo03ViewController.h"
#import "DYSStudent2.h"
#import "DYSTeacher2.h"

@interface DYSDemo03ViewController ()

@end

@implementation DYSDemo03ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    DYSStudent2 *student1 = [[DYSStudent2 alloc] initWithName:@"小明" age:12 grade:1];
    DYSStudent2 *student2 = [student1 copy];
    student2.name = @"小强";

    DYSStudent2 *student3 = [student1 copy];
    student3.name = @"小李";
    student3.age = 13;

    DYSTeacher2 *teacher1 = [[DYSTeacher2 alloc] init];
    teacher1.name = @"张老师";
    teacher1.age = 37;
    teacher1.course = @"数学";

    DYSTeacher2 *teacher2 = [teacher1 copy];
    teacher2.name = @"李老师";

    NSLog(@"姓名：%@ 年龄：%ld 年级：%ld年级", student1.name, (long)student1.age, (long)student1.grade);
    NSLog(@"姓名：%@ 年龄：%ld 年级：%ld年级", student2.name, (long)student2.age, (long)student2.grade);
    NSLog(@"姓名：%@ 年龄：%ld 年级：%ld年级", student3.name, (long)student3.age, (long)student3.grade);

    NSLog(@"姓名：%@ 年龄：%ld 所教科目：%@", teacher1.name, (long)teacher1.age, teacher1.course);
    NSLog(@"姓名：%@ 年龄：%ld 所教科目：%@", teacher2.name, (long)teacher2.age, teacher2.course);
    
    NSString *str = [NSString stringWithFormat:@"姓名：%@ 年龄：%ld 所教科目：%@",teacher1.name, (long)teacher1.age, teacher1.course];
    NSString *str2 = [str copy];
    NSString *str3 = [str mutableCopy];
    NSLog(@"str:%p",str);
    NSLog(@"str2:%p",str2);
    NSLog(@"str3:%p",str3);
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
