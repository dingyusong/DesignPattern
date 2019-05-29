//
//  DYSNonterminalExpression.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSNonterminalExpression.h"

@implementation DYSNonterminalExpression
-(void)interpret:(DYSContext *)context {
    NSLog(@"非终端解释器,context == %@",context.output);
}

@end
