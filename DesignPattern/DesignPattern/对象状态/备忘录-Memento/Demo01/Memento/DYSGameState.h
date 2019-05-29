//
//  DYSGameState.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSGameState : NSObject
@property(nonatomic,assign)NSInteger life;
@property(nonatomic,assign)NSInteger attack;
@property(nonatomic,assign)NSInteger defeat;

@end

NS_ASSUME_NONNULL_END
