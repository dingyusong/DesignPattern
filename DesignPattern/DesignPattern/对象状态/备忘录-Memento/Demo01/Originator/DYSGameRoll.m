//
//  DYSGameRoll.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSGameRoll.h"
#import "DYSGameState.h"

@implementation DYSGameRoll
-(instancetype)init{
    self = [super init];
    if (self) {
        _life = 100;
        _attack = 100;
        _defeat = 100;
    }
    return self;
}

-(void)getState{
    NSLog(@"生命力%ld,防御力%ld,攻击力%ld",self.life,self.defeat,self.attack);
}

-(DYSGameState *)saveState{
    DYSGameState *state = [[DYSGameState alloc]init];
    state.life = self.life;
    state.defeat = self.defeat;
    state.attack = self.attack;
    return state;
}

-(void)rebackState:(DYSGameState *)state{
    self.life = state.life;
    self.defeat = state.defeat;
    self.attack = state.attack;
}

-(void)fightBoss{
    self.life = 0;
    self.defeat = 0;
    self.attack = 0;
}

@end
