//
//  FotorietyModel.m
//  Fotoriety
//
//  Created by John Lee on 5/19/13.
//  Copyright (c) 2013 John Lee. All rights reserved.
//

#import "FotorietyModel.h"

@implementation FotorietyModel

static FotorietyModel *sharedAssets = nil;

+ (FotorietyModel*)sharedManager
{
    if (sharedAssets == nil) {
        sharedAssets = [[super allocWithZone:NULL] init];
    }
    return sharedAssets;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedManager];
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

@end
