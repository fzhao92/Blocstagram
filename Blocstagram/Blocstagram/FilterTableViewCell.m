//
//  FilterTableViewCell.m
//  Blocstagram
//
//  Created by Forrest Zhao on 5/2/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "FilterTableViewCell.h"

@interface FilterTableViewCell ()

@property (nonatomic, strong) UIImageView *thumbnail;
@property (nonatomic, strong) UILabel *label;

@end

static NSInteger imageViewTag;
static NSInteger labelTag;

@implementation FilterTableViewCell

- (id)init {
    imageViewTag = 1000;
    labelTag = 1001;
    
    _thumbnail = (UIImageView *)[self.contentView viewWithTag:imageViewTag];
    _label = (UILabel *)[self.contentView viewWithTag:labelTag];
    return self;
}

- (void) initThumbnailAndLabelAndAddtoSubview:(UIImage *)image andLabelText:(NSString *)text thumbnailEdgeSize:(CGFloat)edgesize {
    _thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, edgesize, edgesize)];
    _thumbnail.contentMode = UIViewContentModeScaleAspectFill;
    _thumbnail.tag = imageViewTag;
    _thumbnail.clipsToBounds = YES;
    [self.contentView addSubview:_thumbnail];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, edgesize, edgesize, 20)];
    _label.tag = labelTag;
    _label.textAlignment = NSTextAlignmentCenter;
    _label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
    [self.contentView addSubview:_label];
    
    _thumbnail.image = image;
    _label.text = text;
}

@end

