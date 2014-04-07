//
//  SDLocker.h
//  SevenDigital
//
//  Created by Daniel Too on 3/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SDAPIResponse;

@interface SDLocker : NSObject

+ (void)requestLockerForCurrentUserWithParams:(NSDictionary *)params completion:(void(^)(SDAPIResponse *response, NSArray *releasesArray, NSError *error))completion;


@end
