//
//  DYSPrototypeViewController.m
//  PrototypePattern
//
//  Created by 丁玉松 on 2018/12/12.
//  Copyright © 2018 丁玉松. All rights reserved.
//
/*
 
 设计模式分为：
 目的：创建型，结构型，行为型
 范围：类，对象
 原型模式是「创建型类模式」
 
 
 参与者：
 Prototype/AbstractPrototype
    声明一个克隆自身的接口。
 ConcretePrototype
    实现一个clone自身的操作。
 Client
    让一个原型clone自身从而创建一个新的对象。
 
 
 */

#import "DYSPrototypeViewController.h"

#import "DYSStudent.h"
#import "DYSTeacher.h"

#import "DYSStudent2.h"
#import "DYSTeacher2.h"


@interface DYSPrototypeViewController ()

@end

@implementation DYSPrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    /**
     当一个对象的创建很复杂，且需要大量相似对象的时候，这个时候很适合用原型模式。大量相同的工作可以复用。
     */

    [self demo01];
    [self demo02];
}


/**
 自己实现原型模式。
 */
- (void)demo01{
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


/**
 CocoaTouch框架中的原型模式
 */
- (void)demo02{
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

@end
