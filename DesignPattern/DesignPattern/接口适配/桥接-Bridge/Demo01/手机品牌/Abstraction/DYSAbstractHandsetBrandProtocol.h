//
//  DYSAbstractHandsetBrandProtocol.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSHandsetSoftProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DYSAbstractHandsetBrandProtocol <NSObject>

@property (nonatomic, weak) id<DYSHandsetSoftProtocol> soft;

- (void)run;

@end

NS_ASSUME_NONNULL_END
