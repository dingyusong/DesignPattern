//
//  DYSOrderProtocol.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DYSOrderProtocol <NSObject>
//接收命令
-(instancetype)initWithOrderString:(NSString *)orderString;
//执行命令
-(void)executeOrder;

@end

NS_ASSUME_NONNULL_END
