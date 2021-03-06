//
//  SDAPIResponse.h
//  TuneFeed
//
//  Created by Tim Ross on 27/05/13.
//  Copyright (c) 2013 7digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SDAPIResponse : NSObject

@property (nonatomic, readonly) NSDictionary *responseItem;
@property (nonatomic, readonly) NSError *error;

- (id)initWithJSONDictionary:(NSDictionary *)dictionary;
- (id)initWithDictionary:(NSDictionary *)dictionary;
- (id)initWithResponse:(SDAPIResponse *)response;

NSDate* NSDateFromISO8601String(NSString *string);
NSString* ISO8601StringFromDate(NSDate *date);

@end
