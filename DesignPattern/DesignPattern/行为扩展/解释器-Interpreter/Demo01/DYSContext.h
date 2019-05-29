//
//  DYSContext.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSContext : NSObject
-(instancetype)initWithInput:(NSString *)input;
@property(nonatomic,copy)NSString *input;
@property(nonatomic,copy)NSString *output;

@end

NS_ASSUME_NONNULL_END
