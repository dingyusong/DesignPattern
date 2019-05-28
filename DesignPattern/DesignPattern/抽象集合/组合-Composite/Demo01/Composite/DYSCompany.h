//
//  DYSCompanyComposite.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DYSCompanyComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DYSCompanyComposite : NSObject<DYSCompanyComponentProtocol>
@property(nonatomic,copy)NSString *name;
-(instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
