//
//  SDRelease.h
//  SevenDigital
//
//  Created by Daniel Too on 3/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDArtist.h"

@interface SDRelease : NSObject

@property (assign, nonatomic) NSInteger releaseId;

@property (strong, nonatomic) NSString *releaseTitle;

@property (assign, nonatomic) NSInteger version;

@property (strong, nonatomic) NSString *releaseType;

@property (assign, nonatomic) NSInteger barcode;

@property (strong, nonatomic) SDArtist *artist;

@property (strong, nonatomic) NSString *SDURL;

@property (strong, nonatomic) NSString *imageURL;

@property (strong, nonatomic) NSDate *releaseDate;

@property (strong, nonatomic) NSArray *tracks;

- (id)initWithDictionary:(NSDictionary *)apiDictionary;

@end
