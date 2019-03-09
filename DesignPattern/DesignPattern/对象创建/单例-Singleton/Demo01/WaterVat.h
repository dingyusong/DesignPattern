//
//  WaterVat.h
//  Singleton
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 独立的小岛上的水缸
 */
@interface WaterVat : NSObject

/**
 水资源量，单位是升
 */
@property (nonatomic, assign) CGFloat waterAmount;

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
