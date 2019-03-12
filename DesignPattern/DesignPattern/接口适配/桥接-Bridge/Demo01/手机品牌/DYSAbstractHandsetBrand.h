//
//  DYSAbstractHandsetBrand.h
//  BridgePattern
//
//  Created by 丁玉松 on 2019/1/2.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSHandsetSoftProtocol.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSAbstractHandsetBrand : NSObject

@property (nonatomic, copy) NSString *brandName;

@property (nonatomic, weak) id<DYSHandsetSoftProtocol> soft;

- (void)run;

@end

NS_ASSUME_NONNULL_END
