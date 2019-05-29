//
//  DYSWorker.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSWorker.h"

@implementation DYSWorker

+(instancetype)sharedWorker{
    static dispatch_once_t once;
    static DYSWorker *sharedWorker = nil;
    dispatch_once(&once, ^{
        sharedWorker = [[DYSWorker alloc]init];
    });
    return sharedWorker;
}

-(void)doMuttonWork:(NSString *)work{
    NSLog(@"厨师考羊肉:%@",work);
}
-(void)doChickenWork:(NSString *)work{
    NSLog(@"厨师考鸡肉:%@",work);
}

-(void)doDuckWork:(NSString *)work{
    NSLog(@"厨师烤鸭肉:%@",work);
}

@end
