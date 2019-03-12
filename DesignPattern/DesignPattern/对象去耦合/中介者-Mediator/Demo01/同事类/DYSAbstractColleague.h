//
//  DYSAbstractColleague.h
//  MediatorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DYSAbstractMediator;

@interface DYSAbstractColleague : NSObject

@property (nonatomic, strong) DYSAbstractMediator *mediator;

- (instancetype)initWithMediator:(DYSAbstractMediator *)mediator;

- (void)notify:(NSString *)message;
- (void)send:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
