//
//  DYSAbstractSubject.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSAbstractSubject.h"

@implementation DYSAbstractSubject
-(instancetype)init{
    self = [super init];
    if (self) {
        _observerList = [NSMutableArray array];
    }
    return self;
}

-(void)attach:(id<DYSObserverInterface>)observer{
    [self.observerList addObject:observer];
}
-(void)detach:(id<DYSObserverInterface>)observer{
    if ([self.observerList containsObject:observer]) {
        [self.observerList removeObject:observer];
    }
}

-(void)notify{
    
}

@end
