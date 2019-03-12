//
//  DYSVisitor1.m
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSVisitor1.h"

@implementation DYSVisitor1

- (void)visitMan:(DYSElementMan *)man {
    NSLog(@"男人喝酒");
}
- (void)visitWoman:(DYSElementWoman *)man {
    NSLog(@"女人喝饮料");
}

@end
