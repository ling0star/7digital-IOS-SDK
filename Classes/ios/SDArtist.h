//
//  SDArtist.h
//  SevenDigital
//
//  Created by Daniel Too on 4/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SDArtist : NSObject

@property (assign, nonatomic) NSInteger artistId;

@property (strong, nonatomic) NSString *artistName;

@property (strong, nonatomic) NSString *artistAppearsAs;

@property (strong, nonatomic) NSString *SDURL;

- (id)initWithDictionary:(NSDictionary *)apiDictionary;


@end
