//
//  DYSFacade.m
//  FacadePattern
//
//  Created by 丁玉松 on 2019/1/2.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSFacade.h"
#import "DYSNationalDebt.h"
#import "DYSRealty.h"
#import "DYSStock.h"

@interface DYSFacade ()

@property (nonatomic, strong) DYSStock *stock;
@property (nonatomic, strong) DYSRealty *realty;
@property (nonatomic, strong) DYSNationalDebt *nationalDebt;

@end

@implementation DYSFacade

- (instancetype)init {
    self = [super init];
    if (self) {
        _stock = [DYSStock new];
        _realty = [DYSRealty new];
        _nationalDebt = [DYSNationalDebt new];
    }
    return self;
}

- (void)buyFund {
    [self.stock buyStock];
    [self.realty buyRealty];
    [self.nationalDebt buyNationalDebt];
}

@end
