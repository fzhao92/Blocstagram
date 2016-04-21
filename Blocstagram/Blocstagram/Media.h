//
//  Media.h
//  Blocstagram
//
//  Created by Forrest Zhao on 3/11/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LikeButton.h"

typedef NS_ENUM(NSInteger, MediaDownloadState){
    MediaDownloadStateNeedsImage          = 0,
    MediaDownloadStateDownloadInProgress   = 1,
    MediaDownloadStateNonRecoverableError = 2,
    MediaDownloadStateHasImage             = 3
};

@class User;

@interface Media : NSObject <NSCoding>

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, assign) MediaDownloadState downloadState;

@property (nonatomic, strong) NSString *caption;

@property (nonatomic, assign) LikeState likeState;

@property (nonatomic, strong) NSArray *comments;

@property (nonatomic, assign) NSInteger numberOfLikes;

- (instancetype) initWithDictionary:(NSDictionary *)mediaDictionary;

@end
