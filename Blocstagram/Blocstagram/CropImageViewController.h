//
//  CropImageViewController.h
//  Blocstagram
//
//  Created by Forrest Zhao on 4/25/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "MediaFullScreenViewController.h"

@class CropImageViewController;

@protocol CropImageViewControllerDelegate <NSObject>

- (void) cropControllerFinishedWithImage:(UIImage *)croppedImage;

@end

@interface CropImageViewController : MediaFullScreenViewController

- (instancetype) initWithImage:(UIImage *)sourceImages;

@property (nonatomic, weak) NSObject <CropImageViewControllerDelegate> *delegate;

@end
