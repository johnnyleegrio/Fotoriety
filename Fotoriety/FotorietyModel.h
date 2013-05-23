//
//  FotorietyModel.h
//  Fotoriety
//
//  Created by John Lee on 5/19/13.
//  Copyright (c) 2013 John Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FotorietyModel : NSObject
@property NSURL *imageURL;

+ (FotorietyModel*) sharedManager;
+ (id)allocWithZone:(NSZone *)zone;
- (id)copyWithZone:(NSZone *)zone;

@end
