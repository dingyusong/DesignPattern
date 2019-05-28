//
//  DYSCompanyComponentProtocol.h
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DYSCompanyComponentProtocol <NSObject>

-(void)add:(id<DYSCompanyComponentProtocol>)company;
-(void)remove:(id<DYSCompanyComponentProtocol>)company;
-(void)display;
-(void)lineofDuty;

@end

NS_ASSUME_NONNULL_END
