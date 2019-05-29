//
//  DYSAbstractSubject.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSObserverInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractSubject : NSObject

@property(nonatomic,strong)NSMutableArray *observerList;

-(void)attach:(id<DYSObserverInterface>)observer;
-(void)detach:(id<DYSObserverInterface>)observer;
-(void)notify;


@end

NS_ASSUME_NONNULL_END
