//
//  DYSRule01AbstractFactoryProtocol.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/27.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DYSRule01AbstractFactoryProtocol <NSObject>

/**
 预处理

 @return return value description
 */
-(NSString *)preProcess;

/**
 生产产品
 */
-(void)createProduct;

@end

NS_ASSUME_NONNULL_END
