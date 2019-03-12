//
//  DYSAbstractChain.h
//  ResponseChainPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSRequest.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractChain : NSObject

@property (nonatomic, strong) DYSAbstractChain *superior;
@property (nonatomic, copy) NSString *name;
- (instancetype)initWithName:(NSString *)name;

- (void)dealWithRequest:(DYSRequest *)request;

@end

NS_ASSUME_NONNULL_END
