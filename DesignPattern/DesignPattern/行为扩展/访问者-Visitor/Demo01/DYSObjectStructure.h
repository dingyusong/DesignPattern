//
//  DYSObjectStructure.h
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAbstractElement.h"
#import "DYSAbstractVisitor.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSObjectStructure : NSObject

- (void)add:(DYSAbstractElement *)element;

- (void)accept:(DYSAbstractVisitor *)visitor;

@end

NS_ASSUME_NONNULL_END
