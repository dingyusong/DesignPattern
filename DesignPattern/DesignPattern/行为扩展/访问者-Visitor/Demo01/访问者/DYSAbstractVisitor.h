//
//  DYSAbstractVisitor.h
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DYSElementMan;
@class DYSElementWoman;

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractVisitor : NSObject

- (void)visitMan:(DYSElementMan *)man;
- (void)visitWoman:(DYSElementWoman *)man;

@end

NS_ASSUME_NONNULL_END
