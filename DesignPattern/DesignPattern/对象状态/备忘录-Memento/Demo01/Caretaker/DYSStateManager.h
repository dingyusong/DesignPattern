//
//  DYSStateManager.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DYSGameState;

@interface DYSStateManager : NSObject

@property(nonatomic,strong)DYSGameState *gameState;
-(instancetype)initWithGameState:(DYSGameState *)gameState;

@end

NS_ASSUME_NONNULL_END
