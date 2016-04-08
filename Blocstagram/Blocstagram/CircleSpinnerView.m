//
//  CircleSpinnerView.m
//  Blocstagram
//
//  Created by Forrest Zhao on 4/8/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import "CircleSpinnerView.h"

@interface CircleSpinnerView ()

@property (nonatomic, strong) CAShapeLayer *circleLayer;

@end

@implementation CircleSpinnerView

- (CAShapeLayer*) circleLayer {
    if (!_circleLayer) {
        CGPoint arcCenter = CGPointMake(self.radius+self.strokeThickness/2+5, self.radius+self.strokeThickness/2+5);
        UIBezierPath *smoothedPath = [UIBezierPath bezierPathWithArcCenter:arcCenter radius:self.radius startAngle:M_PI*3/2 endAngle:M_PI/2+M_PI*5 clockwise:YES];
        
    }
}

@end
