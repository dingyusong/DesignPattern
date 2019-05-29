//
//  DYSMementoViewController.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//
/*
 意图：
 在不破坏封装性的前提下，捕获一个对象的内部状态，并在该对象之外保存这个状态。这样以后就可将该对象恢复到原先保存的状态。
 
 参与者：
 1.Memento(备忘录）
 备忘录存储原发器器对象的内部状态。原发器器根据需要决定备忘录存储原发器器的哪些内部状态。
 
 防⽌止原发器器以外的其他对象访问备忘录。备忘录实际上有两个接⼝口，管理者 (caretaker)只能看到备忘录的窄接⼝口——它只能将备忘录传递给其他对象。相反，发器器能够看到⼀一个宽接⼝口，允许它访问返回到先前状态所需的所有数据。理理想的 是只允许⽣生成本备忘录的那个原发器器访问本备忘录的内部
 
 2.Originator(原发器）
 原发器创建一个备忘录，用以记录当前时刻它的内部状态。
 使⽤备忘录恢复内部状态。
 
 3.Caretaker(负责人）
 负责保存好备忘录。
 不能对备忘录的内容进行操作或检查。
 
 */

#import "DYSMementoViewController.h"
#import "DYSGameRoll.h"
#import "DYSGameState.h"
#import "DYSStateManager.h"

@interface DYSMementoViewController ()

@end

@implementation DYSMementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self demo01];
}

- (void)demo01 {
    DYSGameRoll *roll = [[DYSGameRoll alloc]init];
    
    [roll getState];
    
    DYSGameState *state = [roll saveState];
    
    DYSStateManager *manager = [[DYSStateManager alloc]initWithGameState:state];
    
    [roll fightBoss];
    [roll getState];
    
    [roll rebackState:manager.gameState];
    
    [roll getState];

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
