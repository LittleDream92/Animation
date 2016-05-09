//
//  CustomShapeLayer.m
//  ScaleLoading
//
//  Created by wanglidan on 16/3/1.
//  Copyright © 2016年 wanglidan. All rights reserved.
//

#import "CustomShapeLayer.h"
#import <UIKit/UIKit.h>

@implementation CustomShapeLayer

- (instancetype)initWithFrame:(CGRect)frame withIndex:(NSInteger)index
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(99.5, 99.5, 1, 1);
        self.path = [self rectanglePath].CGPath;
        self.fillColor = [UIColor colorWithRed:0.875 green: 0.227 blue:0.118 alpha:1].CGColor;
        self.lineWidth = 0;
    }
    return self;
}

- (UIBezierPath *)rectanglePath
{
    UIBezierPath *rectanglePath = [UIBezierPath bezierPath];
    [rectanglePath moveToPoint:CGPointMake(0.189, 0.995)];
    [rectanglePath addCurveToPoint:CGPointMake(0.459, 0.993) controlPoint1:CGPointMake(0.26, 0.996) controlPoint2:CGPointMake(0.388, 0.992)];
    [rectanglePath addCurveToPoint:CGPointMake(0.758, 1) controlPoint1:CGPointMake(0.53, 0.994) controlPoint2:CGPointMake(0.687, 0.999)];
    [rectanglePath addLineToPoint:CGPointMake(1, 0.059)];
    [rectanglePath addCurveToPoint:CGPointMake(0.502, 0) controlPoint1:CGPointMake(0.877, 0.022) controlPoint2:CGPointMake(0.635, 0.002)];
    [rectanglePath addCurveToPoint:CGPointMake(0, 0.046) controlPoint1:CGPointMake(0.381, -0.002) controlPoint2:CGPointMake(0.128, 0.028)];
    [rectanglePath closePath];
    [rectanglePath moveToPoint:CGPointMake(0.189, 0.995)];
    
    return rectanglePath;
}
@end
