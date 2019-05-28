//
//  DYSGiveGiftProtocol.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DYSGiveGiftProtocol <NSObject>
///  送洋娃娃
- (void)giveDolls;

///  送鲜花
- (void)giveFlowers;

///  送巧克力
- (void)giveChocolate;

@end

NS_ASSUME_NONNULL_END
