//
//  DYSPeople.h
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSPeople : NSObject

- (instancetype)initWithXingMing:(NSString *)xingMing;

@property (nonatomic, copy) NSString *xingMing;

- (void)sayXingMing;

@end

NS_ASSUME_NONNULL_END
