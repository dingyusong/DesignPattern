//
//  DYSStateInterface.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DYSStateWork;

@protocol DYSStateInterface <NSObject>

-(void)writeProgram:(DYSStateWork *)work;

@end

NS_ASSUME_NONNULL_END
