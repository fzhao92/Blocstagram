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
    
    self.thumbnail = (UIImageView *)[self.contentView viewWithTag:imageViewTag];
    self.label = (UILabel *)[self.contentView viewWithTag:labelTag];
    return self;
}

- (void) initThumbnailAndLabelAndAddtoSubview:(UIImage *)image andLabelText:(NSString *)text thumbnailEdgeSize:(CGFloat)edgesize {
    self.thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, edgesize, edgesize)];
    self.thumbnail.contentMode = UIViewContentModeScaleAspectFill;
    self.thumbnail.tag = imageViewTag;
    self.thumbnail.clipsToBounds = YES;
    [self.contentView addSubview:_thumbnail];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, edgesize, edgesize, 20)];
    self.label.tag = labelTag;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:10];
    [self.contentView addSubview:self.label];
    
    self.thumbnail.image = image;
    self.label.text = text;
}

@end

