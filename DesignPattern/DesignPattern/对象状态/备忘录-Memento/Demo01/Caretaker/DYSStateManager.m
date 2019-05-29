//
//  DYSStateManager.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSStateManager.h"

@implementation DYSStateManager

-(instancetype)initWithGameState:(DYSGameState *)gameState{
    self = [super init];
    if (self) {
        _gameState = gameState;
    }
    return self;
}

@end
