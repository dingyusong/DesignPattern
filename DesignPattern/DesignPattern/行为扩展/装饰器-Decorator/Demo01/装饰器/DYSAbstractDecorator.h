//
//  DYSAbstractDecorator.h
//  DecoratorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAbstractComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractDecorator : DYSAbstractComponent

@property (nonatomic, strong) DYSAbstractComponent *component;

@end

NS_ASSUME_NONNULL_END
