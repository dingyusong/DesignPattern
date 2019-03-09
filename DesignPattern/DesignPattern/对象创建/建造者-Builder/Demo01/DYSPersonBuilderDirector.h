//
//  DYSPersonBuilderDirector.h
//  BuilderModel
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSPersonBuilder.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSPersonBuilderDirector : NSObject

@property (nonatomic, strong) DYSPersonBuilder *personBuilder;

- (void)createPerson;

@end

NS_ASSUME_NONNULL_END
