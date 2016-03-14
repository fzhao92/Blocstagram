//
//  MediaTableViewCell.h
//  Blocstagram
//
//  Created by Forrest Zhao on 3/12/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaTableViewCell : UITableViewCell

@property (nonatomic, strong) Media *mediaItem;

+(CGFloat) heightForMediaItem:(Media *)mediaItem width:(CGFloat)width;

@end
