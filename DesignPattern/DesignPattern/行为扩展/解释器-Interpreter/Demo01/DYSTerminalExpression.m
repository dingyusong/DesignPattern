//
//  DYSTerminalExpression.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/29.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSTerminalExpression.h"

@implementation DYSTerminalExpression
-(void)interpret:(DYSContext *)context{
    NSLog(@"终端解释器,context == %@",context.output);
}

@end
