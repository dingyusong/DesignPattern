//
//  DYSAbstractElement.h
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAbstractVisitor.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractElement : NSObject

- (void)accept:(DYSAbstractVisitor *)visitor;

@end

NS_ASSUME_NONNULL_END
