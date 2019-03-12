//
//  DYSRequest.h
//  ResponseChainPattern
//
//  Created by DingYusong on 2019/1/3.
//  Copyright © 2019 DingYusong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DYSRequestType) {
    DYSRequestTypeVacation = 1,
};

NS_ASSUME_NONNULL_BEGIN

@interface DYSRequest : NSObject
//@property(nonatomic,assign)DYSRequestType requestType;
@property (nonatomic, copy) NSString *requestType;

@property (nonatomic, assign) NSInteger number;

@end

NS_ASSUME_NONNULL_END
