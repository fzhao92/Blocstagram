//
//  FilterTableViewCell.h
//  Blocstagram
//
//  Created by Forrest Zhao on 5/2/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FilterTableViewCell;
/*
@protocol FilterTableViewCellDelegate <NSObject>

- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

@end*/

@interface FilterTableViewCell : UICollectionViewCell

//@property (nonatomic, weak) id <FilterTableViewCellDelegate> delegate;

- (void) initThumbnailAndLabelAndAddtoSubview: (UIImage *)image andLabelText:(NSString *)text thumbnailEdgeSize:(CGFloat)edgesize;

@end
