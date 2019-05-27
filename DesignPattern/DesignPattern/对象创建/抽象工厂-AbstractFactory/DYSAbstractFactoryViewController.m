//
//  DYSAbstractFactoryViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/24.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSAbstractFactoryViewController.h"
#import "MySqlFactory.h"
#import "AbstractUseAccess.h"
#import "SqlServerFactory.h"
/**
 将数据库从sqlserver换到mysql。
 
 在工厂方法模式上进行进一步抽象。
 
 如果用抽象工厂模式的话，这种切换数据库需要新增一个数据库工厂类，只需要新增一个工厂类，并将实例化工厂类的代码进行修改。
 
 数据库工厂类和数据访问类，用接口来进行统一，面向接口编程，无论换成什么数据库，都需要实现接口。
 
 
 新增一个遵循数据库工厂接口的mysqlFactory工厂类，新增一个遵循用户数据存取接口的mysqlUser控制类。
 数据库修改到mysql，只需要在使用环境里修改工厂的实例化代码，原来的插入和获取用户的逻辑都不需要变化。符合开闭原则。
 
 */

@interface DYSAbstractFactoryViewController ()

@end

@implementation DYSAbstractFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self demo01];
    
}

-(void)demo01 {
    //抽象工厂模式
    User *user = [User new];
    user.name = @"丁丁";
    user.age = 28;
    
    /*
     设计模式分为：
     目的：创建型，结构型，行为型
     范围：类，对象
     抽象工厂模式是「创建型对象模式」
     
     创建型类模式将对象的部分创建⼯作延迟到子类，而创建型对象模式则将它延迟到另⼀个对象中。
     抽象工厂模式是「创建型对象模式」[afactory createUser]，将AbstractUseAccess的创建工作，放到了AbstractDBFactory的对象中。
     
     原则：
     针对接口编程，而不是针对实现编程。createUser，insertUser，gotUser 这些都是定义的抽象接口
     
     意图：
     提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。
     
     适⽤性：
     在以下情况可以使⽤用Abstract Factory
     ・一个系统要独⽴于它的产品的创建、组合和表示时
     ・一个系统要由多个产品系列中的一个来配置时
     ・当你要强调一系列列相关的产品对象的设计以便便进行联合使用时
     ・当你提供一个产品类库，而只想显示它们的接⼝而不是实现时
     
     参与者：
     AbstractFactory
        抽象工厂：声明一个创建抽象对象的操作接口
     ConcreteFactory
        实体工厂：实现创建具体产品对象的操作
     AbstractProduct
        抽象产品：为一类产品对象声明⼀个接口
     ConcreteProduct
        实体产品：定义一个将被相应的具体工⼚创建的产品
     Client
     ⼀一仅使用由AbstractFactory和AbstractProduct类声明的接口
     
     协作：
     ・通常在运行时刻创建一个ConcreteFactroy类的实例。这一具体的工厂创建具有特定实现的产品对象。为创建不同的产品对象，客户应使用不同的具体工厂。
     ・AbstractFactory将产品对象的创建延迟到它的ConcreteFactory子类。
     
     编译时使用AbstractFactory 和 AbstractProduct类声明的接口。运行时创建一个ConcreteFactroy类的实例和ConcreteProduct实例。
     
     */
    AbstractDBFactory *afactory = [SqlServerFactory new];
    //AbstractDBFactory *afactory = [MySqlFactory new];
    
    AbstractUseAccess *auser = [afactory createUser];
    [auser insertUser:user];
    [auser gotUser];
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
