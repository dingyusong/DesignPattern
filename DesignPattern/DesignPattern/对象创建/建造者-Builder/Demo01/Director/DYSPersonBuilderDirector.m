//
//  DYSPersonBuilderDirector.m
//  BuilderModel
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSPersonBuilderDirector.h"

@implementation DYSPersonBuilderDirector

- (void)createPerson {
    if (!self.personBuilder) {
        NSLog(@"缺少建造者");
    }

    [self.personBuilder buildHeader];
    [self.personBuilder buildBody];
    [self.personBuilder buildLeftArm];
    [self.personBuilder buildRightArm];
    [self.personBuilder buildLeftLeg];
    [self.personBuilder buildRightLeg];
}

@end
