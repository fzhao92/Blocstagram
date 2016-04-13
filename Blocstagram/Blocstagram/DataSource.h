//
//  DataSource.h
//  Blocstagram
//
//  Created by Forrest Zhao on 3/11/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Media;

typedef void (^NewItemCompletionBlock)(NSError *error);

@interface DataSource : NSObject

+ (instancetype) sharedInstance;

+ (NSString *) instagramClientID;

@property (nonatomic, strong, readonly) NSArray *mediaItems;

@property (nonatomic, strong, readonly) NSString *accessToken;


- (void) deleteMediaItem:(Media *)item;

- (void) requestNewItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

- (void) requestOldItemsWithCompletionHandler:(NewItemCompletionBlock)completionHandler;

- (void) downloadImageForMediaItem:(Media *)mediaItem;

- (void) toggleLikeOnMediaItem:(Media *)mediaItem withCompletionHandler:(void (^)(void))completionHandler;

@end
