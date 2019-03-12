//
//  DYSAdapter.h
//  AdapterPattern
//
//  Created by 丁玉松 on 2018/12/29.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "DYSAdapterProtocol.h"
#import "DYSPeople.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSAdapter : NSObject <DYSAdapterProtocol>

- (instancetype)initWithPeople:(DYSPeople *)people;

@property (nonatomic, strong) DYSPeople *people;

@end

NS_ASSUME_NONNULL_END
