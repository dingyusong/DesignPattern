//
//  DYSProxyViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 为其他对象提供一种代理理以控制对这个对象的访问。
 
 参与者：
 1.Proxy
 保存一个引用使得代理可以访问实体。若RealSubject和Subject的接⼝相同，Proxy会引⽤Subject。
 提供一个与Subject的接口相同的接口，这样代理理就可以⽤用来替代实体。
 控制对实体的存取，并可能负责创建和删除它。
 其他功能依赖于代理理的类型：
 ・ Remote Proxy负责对请求及其参数进行编码，并向不同地址空间中的实体发送已编码的请求。
 ・ Virtual Proxy可以缓存实体的附加信息，以便延迟对它的访问。
 ・ Protection Proxy检查调用者是否具有实现⼀个请求所必需的访问权限
 
 本例：DYSProxy 
 
 2.Subject
 定义RealSubject和Proxy的共⽤接口，这样就在任何使⽤RealSubject的地方都可以试用Proxy
 
 本例：DYSGiveGiftProtocol
 
 3.RealSubject
 定义Proxy所代表的实体
 
 本例：DYSPursuit
 
 协作：
 代理理根据其种类，在适当的时候向RealSubject转发请求。
 
 */
#import "DYSProxyViewController.h"

#import "DYSSchoolGirl.h"
#import "DYSProxy.h"

@interface DYSProxyViewController ()

@end

@implementation DYSProxyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self demo01];
}

- (void)demo01{
    DYSSchoolGirl *girl = [[DYSSchoolGirl alloc]init];
    girl.name = @"韩梅梅";
    DYSProxy *proxy = [[DYSProxy alloc]initWithSchoolGirl:girl];
    [proxy giveFlowers];
    [proxy giveDolls];
    [proxy giveChocolate];
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
