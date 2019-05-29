//
//  DYSWorker.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSWorker : NSObject
+(instancetype)sharedWorker;

-(void)doMuttonWork:(NSString *)work;
-(void)doChickenWork:(NSString *)work;
-(void)doDuckWork:(NSString *)work;

@end

NS_ASSUME_NONNULL_END
