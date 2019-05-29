//
//  DYSStateWork.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSStateInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface DYSStateWork : NSObject

@property(nonatomic,strong)id<DYSStateInterface> state;
@property(nonatomic,assign)CGFloat hour;
@property(nonatomic,assign)BOOL finished;
-(void)writeProgram;


@end

NS_ASSUME_NONNULL_END
