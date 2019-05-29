//
//  DYSSecreteSubject.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSSecreteSubject.h"
#import "DYSObserverInterface.h"

@implementation DYSSecreteSubject
-(void)notify{
    NSLog(@"秘书通知：老板回来了，大家赶紧撤");
    for (id<DYSObserverInterface> observer in self.observerList) {
        [observer update];
    }
}

@end
