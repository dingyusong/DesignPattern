//
//  DYSElementMan.m
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSElementMan.h"

@implementation DYSElementMan

- (void)accept:(DYSAbstractVisitor *)visitor {
    [visitor visitMan:self];
}

@end
