//
//  DYSChainProtocol.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DYSChainProtocol <NSObject>

@property (nonatomic, strong) id<DYSChainProtocol> superior;

- (void)dealWithRequest:(DYSRequest *)request;

@end

NS_ASSUME_NONNULL_END
