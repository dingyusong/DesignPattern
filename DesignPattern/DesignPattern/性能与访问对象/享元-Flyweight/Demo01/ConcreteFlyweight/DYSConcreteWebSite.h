//
//  DYSConcreteWebSite.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSWebSideProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DYSConcreteWebSite : NSObject<DYSWebSideProtocol>
@property(nonatomic,strong)NSString *webName;

@end

NS_ASSUME_NONNULL_END
