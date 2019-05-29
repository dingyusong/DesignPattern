//
//  DYSAbstractOrder.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSOrderProtocol.h"
#import "DYSWorker.h"


NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractOrder : NSObject <DYSOrderProtocol>
@property(nonatomic,copy)NSString *orderString;

@end

NS_ASSUME_NONNULL_END
