//
//  DYSElementWoman.m
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSElementWoman.h"

@implementation DYSElementWoman

- (void)accept:(DYSAbstractVisitor *)visitor {
    [visitor visitWoman:self];
}

@end
