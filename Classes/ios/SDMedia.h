//
//  SDMedia.h
//  SevenDigital
//
//  Created by Daniel Too on 3/04/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SDTrack;

typedef NS_ENUM(NSInteger, kSDMediaType) {
    kSDMediaTypeOffline = 0,
    kSDMediaTypeStreamingLocker,
    kSDMediaTypeStreamingSubscription,
    kSDMediaTypeStreamingInternetRadio,
    kSDMediaTypeCount
};

@interface SDMedia : NSObject

- (NSURL *)urlForTrack:(SDTrack *)track mediaType:(kSDMediaType)mediaType;

- (NSURL *)urlForTrackId:(NSString *)trackId mediaType:(kSDMediaType)mediaType;

@end
