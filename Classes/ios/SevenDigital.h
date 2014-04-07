//
//  SevenDigital.h
//  SevenDigital
//
//  Created by Daniel Too on 31/03/14.
//  Copyright (c) 2014 7 Digital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SDAPIRequest.h"
#import "SDAPIResponse.h"
#import "SDLocker.h"
#import "SDMedia.h"

#define SDAuthenticationChangedNotification @"SDAuthenticationChangedNotification"

@interface SevenDigital : NSObject

@property (nonatomic, readonly) NSString *currentUser;
@property (nonatomic, readonly) BOOL isCurrentUserAuthenticated;

/**@brief reusable singleton for calling api methods*/
+ (SevenDigital *)sharedInstance;


/**
 Initializes the 7Digital API with your consumer key and secret. 
 
 @see Register as a developer at http://access.7digital.com/partnerprogram for more information
 @param key     Your 7Digital Consumer Key
 @param secret  Your 7Digital Consumer Secret
 
 .*/
+ (void)initializeWithConsumerKey:(NSString *)key andSecret:(NSString *)secret;


//
// General API Requests
//

/**
 Creates and sends and API call to the 7Digital API.
 
 @param request         A request with a relative URL and parameters for the API call
 @param successBlock    A handler for the api response
 @param failureBlock    A handler for any api errors
 
 .*/

- (void)performRequest:(SDAPIRequest *)request
             onSuccess:(void(^)(SDAPIResponse* apiResponse))successBlock
             onFailure:(void(^)(NSError *error))failureBlock;


/**
 Creates an NSURL which contains all of the oauth parameters. Useful as a helper to get
 tracks.
 
 @param url             The path as an NSURL that we would like to request from
 @param params          A dictionary with any url parameters
 
 @returns an oauth-ready NSURL
 
 .*/

- (NSURL *)authenticatedURLWithURL:(NSURL *)url params:(NSDictionary *)params;


//
// Authentication with the 7Digital API
//

/**
 Logs a user into their 7Digital account
 
 @param username        The user's 7Digital account username or email address
 @param password        The user's 7Digital account password
 @param successBlock    A handler for the success block, which also returns the logged in user's username
 
 .*/

// Login and logout methods
- (void)loginUsername:(NSString*)username
             password:(NSString*)password
            onSuccess:(void(^)(NSString *username))successBlock;

- (void)loginWithUsername:(NSString*)username
                 password:(NSString*)password;

- (void)logout;



//Register for a seven digital account.
/**@brief sign up for a seven digital account. */
//- (void)signUpWithUsername:(NSString *)username password:(NSString *)password withCompletion:(void(NSDictionary * response))completion;
- (void)signUpWithUsername:(NSString *)username password:(NSString *)password withCompletion:(void(^)(BOOL success))completion;




@end
