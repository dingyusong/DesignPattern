//
//  DYSWaiter.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DYSAbstractOrder;

NS_ASSUME_NONNULL_BEGIN

@interface DYSWaiter : NSObject
-(void)addOrder:(DYSAbstractOrder *)order;
-(void)deleteOrder:(DYSAbstractOrder *)order;
-(void)notifyOrder;

@end

NS_ASSUME_NONNULL_END
