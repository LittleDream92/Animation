//
//  DurModel.m
//  ScaleLoading
//
//  Created by wanglidan on 16/3/1.
//  Copyright © 2016年 wanglidan. All rights reserved.
//

#import "DurModel.h"

@implementation DurModel

+ (CGFloat) initWithTheDuration:(CABasicAnimation *)animation
{
    CGFloat maxDuration = 0;
    maxDuration = MAX(animation.beginTime + animation.duration * (CGFloat)(animation.repeatCount == 0 ? 1.0f : animation.repeatCount) * (animation.autoreverses ? 2.0f : 1.0f), maxDuration);
    return maxDuration;
}

@end
