//
//  DYSAbstractMediator.h
//  MediatorPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import "DYSAbstractColleague.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractMediator : NSObject

@property (nonatomic, strong) DYSAbstractColleague *colleague1;
@property (nonatomic, strong) DYSAbstractColleague *colleague2;

- (void)send:(NSString *)message colleague:(DYSAbstractColleague *)colleague;

@end

NS_ASSUME_NONNULL_END
