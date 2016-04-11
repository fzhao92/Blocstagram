//
//  MediaTableViewCell.h
//  Blocstagram
//
//  Created by Forrest Zhao on 3/12/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media, MediaTableViewCell;

@protocol MediaTableViewCellDelegate <NSObject>

- (void) cell:(MediaTableViewCell *)cell didTapImageView:(UIImageView *)imageView;
- (void) cell:(MediaTableViewCell *)cell didLongPressImageView:(UIImageView *)imageView;

@end

@protocol DataSourceCellDelegate <NSObject>

//- (void) cell:(MediaTableViewCell *)cell didTwoFingerPressImageView:(UIImageView *)imageView;
- (void) downloadImageForMediaItem:(Media *) mediaItem;

@end

@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;
@property (nonatomic, weak) id <MediaTableViewCellDelegate> delegate;
@property (nonatomic, weak) id <DataSourceCellDelegate> dataSourceDelegate;
@property (nonatomic, strong) UILongPressGestureRecognizer *longPressGestureRecognizer;
@property (nonatomic, strong) UITapGestureRecognizer *twoFingerTapGestureRecognizer;

+(CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;

@end
