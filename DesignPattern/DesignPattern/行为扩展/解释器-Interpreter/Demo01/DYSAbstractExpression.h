//
//  DYSAbstractExpression.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSContext.h"

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractExpression : NSObject
-(void)interpret:(DYSContext *)context;

@end

NS_ASSUME_NONNULL_END
