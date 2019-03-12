//
//  DYSVisitor2.m
//  VisitorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSVisitor2.h"

@implementation DYSVisitor2
- (void)visitMan:(DYSElementMan *)man {
    NSLog(@"男人耕田");
}
- (void)visitWoman:(DYSElementWoman *)man {
    NSLog(@"女人织布");
}

@end
