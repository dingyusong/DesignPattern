//
//  DYSDemo02ViewController.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/12.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSDemo02ViewController.h"
#import "DYSStudent.h"
#import "DYSTeacher.h"

@interface DYSDemo02ViewController ()

@end

@implementation DYSDemo02ViewController

/**
 当一个对象的创建很复杂，且需要大量相似对象的时候，这个时候很适合用原型模式。大量相同的工作可以复用。
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    DYSStudent *student1 = [[DYSStudent alloc] initWithName:@"小明" age:12 grade:1];
    DYSStudent *student2 = [student1 dys_clone];
    student2.name = @"小强";

    DYSStudent *student3 = [student1 dys_clone];
    student3.name = @"小李";
    student3.age = 13;

    DYSTeacher *teacher1 = [[DYSTeacher alloc] init];
    teacher1.name = @"张老师";
    teacher1.age = 37;
    teacher1.course = @"数学";

    DYSTeacher *teacher2 = [teacher1 dys_clone];
    teacher2.name = @"李老师";

    NSLog(@"姓名：%@ 年龄：%ld 年级：%ld年级", student1.name, (long)student1.age, (long)student1.grade);
    NSLog(@"姓名：%@ 年龄：%ld 年级：%ld年级", student2.name, (long)student2.age, (long)student2.grade);
    NSLog(@"姓名：%@ 年龄：%ld 年级：%ld年级", student3.name, (long)student3.age, (long)student3.grade);

    NSLog(@"姓名：%@ 年龄：%ld 所教科目：%@", teacher1.name, (long)teacher1.age, teacher1.course);
    NSLog(@"姓名：%@ 年龄：%ld 所教科目：%@", teacher2.name, (long)teacher2.age, teacher2.course);
    
}

@end
