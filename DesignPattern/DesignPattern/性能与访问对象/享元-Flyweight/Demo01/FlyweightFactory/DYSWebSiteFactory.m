//
//  DYSWebSiteFactory.m
//  DesignPattern
//
//  Created by 丁玉松 on 2019/5/28.
//  Copyright © 2019 丁玉松. All rights reserved.
//

#import "DYSWebSiteFactory.h"
#import "DYSConcreteWebSite.h"

@implementation DYSWebSiteFactory
-(instancetype)init{
    self = [super init];
    if (self) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

-(id<DYSWebSideProtocol> )getWebSiteCategory:(NSString *)webkey{
    __block id<DYSWebSideProtocol> webset = nil;
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (webkey == key) {
            webset = obj;
            *stop = YES;
        }
    }];
    if (webset == nil) {
        DYSConcreteWebSite  *concreteset = [[DYSConcreteWebSite alloc] init];
        concreteset.webName = webkey;
        webset = concreteset;
        
        NSMutableDictionary *mutabledic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutabledic setObject:webset forKey:webkey];
        self.flyweights = [NSDictionary dictionaryWithDictionary:mutabledic];
    }
    return webset;
}

-(NSInteger)getWebSiteCount{
    return self.flyweights.count;
}

@end
