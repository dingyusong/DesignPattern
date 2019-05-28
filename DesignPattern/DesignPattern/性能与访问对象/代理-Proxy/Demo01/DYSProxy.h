//
//  DYSProxy.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSGiveGiftProtocol.h"

@class DYSSchoolGirl,DYSPursuit;

NS_ASSUME_NONNULL_BEGIN

@interface DYSProxy : NSObject<DYSGiveGiftProtocol>
-(instancetype)initWithSchoolGirl:(DYSSchoolGirl *)schoolGirl;

@end

NS_ASSUME_NONNULL_END
