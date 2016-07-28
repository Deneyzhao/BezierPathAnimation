//
//  CirclePath.m
//  Bezier
//
//  Created by deney on 16/7/28.
//  Copyright © 2016年 deney. All rights reserved.
//

#import "CirclePath.h"

@implementation CirclePath

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.frame = frame;
        self.alpha = 0.0f;
    }
    return self;
}

- (void)startCircleTransfromAnimationWithDuration:(CGFloat)duration{
    self.alpha = 1.0f;
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];
    rotationAnimation.duration = duration;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 999;
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

- (void)stopCircleTransfromAnimation{
    self.alpha = 0.0f;
    [self.layer removeAnimationForKey:@"rotationAnimation"];
}


-(void)drawRect:(CGRect)rect{
    UIBezierPath *circle = [UIBezierPath bezierPath];
    [[UIColor redColor]setStroke];
    [circle addArcWithCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:20.0 startAngle:90 endAngle:180 clockwise:NO];
    [circle stroke];
}

@end
