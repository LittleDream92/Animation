//
//  ScaleLoadingView.h
//  ScaleLoading
//
//  Created by wanglidan on 16/3/1.
//  Copyright © 2016年 wanglidan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScaleLoadingView : UIView

@property (nonatomic, strong) NSMutableDictionary *layers;
@property (nonatomic, strong) NSMapTable *completionBlocks;

- (void)customAnimations;
- (void)removeAllAnimations;

@end
