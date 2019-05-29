//
//  DYSCustomer.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DYSAbstractOrder;

typedef NS_ENUM(NSUInteger,orderType){
    orderTypeMutton,
    orderTypeChicken,
    orderTypeDuck
};

@interface DYSCustomer : NSObject

-(DYSAbstractOrder *)pushOrderWithString:(NSString *)string type:(orderType)type;

@end

NS_ASSUME_NONNULL_END
