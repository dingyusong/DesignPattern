//
//  WaterVat.m
//  Singleton
//
//  Created by 丁玉松 on 2018/10/31.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "WaterVat.h"

@implementation WaterVat

#pragma mark - 非严格单例模式
//+ (instancetype)shareInstance{
//
//    static WaterVat *waterVat;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        waterVat = [[WaterVat alloc] init];
//        //默认有10升水
//        waterVat.waterAmount = 10;
//    });
//    return waterVat;
//}

#pragma mark - 严格单例模式
static WaterVat *waterVat;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!waterVat) {
            waterVat = [[WaterVat alloc] init];
        }
    });
    return waterVat;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!waterVat) {
            waterVat = [super allocWithZone:zone];
        }
    });
    return waterVat;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            self.waterAmount = 10;
        });
    }
    return self;
}

- (id)copy {
    return self;
}

- (id)mutableCopy {
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"address:%p waterAmount:%f", self, self.waterAmount];
}

@end
