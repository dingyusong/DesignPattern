//
//  LeiFengFactory.h
//  FactoryMethod
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "LeiFeng.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeiFengFactory : NSObject

+ (LeiFeng *)createLeiFeng;

@end

NS_ASSUME_NONNULL_END
