//
//  DYSPersonBuilder.h
//  BuilderModel
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYSPersonBuilder : NSObject

- (void)buildHeader;
- (void)buildBody;
- (void)buildLeftArm;
- (void)buildRightArm;
- (void)buildLeftLeg;
- (void)buildRightLeg;

@end

NS_ASSUME_NONNULL_END
