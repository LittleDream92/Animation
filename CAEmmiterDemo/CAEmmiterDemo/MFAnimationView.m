//
//  MFAnimationView.m
//  CAEmmiterDemo
//
//  Created by Meng Fan on 16/8/3.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "MFAnimationView.h"

@interface MFAnimationView ()

@property (nonatomic, strong) CAEmitterLayer *sunshineEmitterLayer;
@property (nonatomic, strong) CAEmitterLayer *rainDropEmitterLayer;

@property (nonatomic, strong) UIImageView *bgView;

@end


@implementation MFAnimationView

//自定义初始化方法
- (instancetype)initWithFrame:(CGRect)frame effect:(NSString *)effect {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.bgView = [[UIImageView alloc] initWithFrame:frame];
        [self addSubview:self.bgView];
        
        if ([effect isEqualToString:@"rain"]) {
            [self addRain];
        }
        
        if ([effect isEqualToString:@"sakura"]) {
            [self addSunEmitter];
        }
        
    }
    return self;
}

#pragma mark - 阳光特效
- (void)addSunEmitter {
    //设置背景图片
    self.bgView.image = [UIImage imageNamed:@"樱花树2"];
    //粒子发射器图层
    self.sunshineEmitterLayer = [CAEmitterLayer layer];
    self.sunshineEmitterLayer.emitterPosition = CGPointMake(100, -30);
    
    //粒子发射器的范围
    self.sunshineEmitterLayer.emitterSize = CGSizeMake(self.bounds.size.width*2, 0);
    //粒子发射模式
    self.sunshineEmitterLayer.emitterMode = kCAEmitterLayerOutline;
    //粒子模式
    self.sunshineEmitterLayer.emitterShape = kCAEmitterLayerLine;
    
    //创建粒子
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    //设置粒子内容,图片
    emitterCell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"樱花瓣2"].CGImage);
    //设置粒子缩放比例
    emitterCell.scale = 0.02;
    //缩放范围
    emitterCell.scaleRange = 0.5;
    //每秒粒子产生数量
    emitterCell.birthRate = 50;
    //粒子生命周期
    emitterCell.lifetime = 80;
    //粒子透明速度
    emitterCell.alphaSpeed = -0.01;
    //粒子的速度
    emitterCell.velocity = 80;
    emitterCell.velocityRange = 50;
    //设置角度
    emitterCell.emissionRange = M_PI;
    //设置粒子自旋转角速度
    emitterCell.spin = M_PI_4;
    
    //设置layer的阴影
    self.sunshineEmitterLayer.shadowOpacity = 1.0;
    //设置圆角
    self.sunshineEmitterLayer.shadowRadius = 8;
    //设置偏移
    self.sunshineEmitterLayer.shadowOffset = CGSizeMake(3, 3);
    //设置颜色
    self.sunshineEmitterLayer.shadowColor = [UIColor whiteColor].CGColor;
    
    //设置layer的粒子
    self.sunshineEmitterLayer.emitterCells = @[emitterCell];
    [self.layer addSublayer:_sunshineEmitterLayer];
}


#pragma mark - 下雨特效
- (void)addRain {
    self.bgView.image=[UIImage imageNamed:@"rainning.jpeg"];
    
    //粒子发射器图层
    self.rainDropEmitterLayer=[CAEmitterLayer layer];
    
    _rainDropEmitterLayer.emitterPosition=CGPointMake(100, -30);
    
    //粒子发射器的范围
    _rainDropEmitterLayer.emitterSize=CGSizeMake(self.bounds.size.width*4, 0);
    
    //发射模式
    _rainDropEmitterLayer.emitterMode=kCAEmitterLayerOutline;
    
    //粒子模式
    _rainDropEmitterLayer.emitterShape=kCAEmitterLayerLine;
    
    //创建粒子
    CAEmitterCell *emitterCell=[CAEmitterCell emitterCell];
    
    //设置粒子内容
    emitterCell.contents=(__bridge id)([UIImage imageNamed:@"42-Raindrop"].CGImage);
    
    //设置粒子缩放比例
    emitterCell.scale=0.9;
    
    //缩放范围
    emitterCell.scaleRange=0.5;
    
    //每秒粒子产生数量
    emitterCell.birthRate=130;
    
    //粒子生命周期
    emitterCell.lifetime=5;
    
    //粒子透明速度
    emitterCell.alphaSpeed=-0.1;
    
    //粒子速度
    emitterCell.velocity=280;
    emitterCell.velocityRange=100;
    
    //设置发射角度
    emitterCell.emissionLongitude=-M_PI;
    //    emitterCell.emissionRange=M_PI;
    
    
    
    //设置粒子旋转角速度
    //    emitterCell.spin=M_PI_4;
    
    //设置layer阴影
    _rainDropEmitterLayer.shadowOpacity=1.0;
    
    //设置圆角
    _rainDropEmitterLayer.shadowRadius=2;
    
    //设置偏移
    _rainDropEmitterLayer.shadowOffset=CGSizeMake(1, 1);
    
    //设置颜色
    _rainDropEmitterLayer.shadowColor=[UIColor whiteColor].CGColor
    ;
    
    //设置layer的粒子
    _rainDropEmitterLayer.emitterCells=@[emitterCell];
    
    _rainDropEmitterLayer.transform=CATransform3DMakeRotation(-M_PI/4, 0, 0, 1);
    
    [self.layer addSublayer:_rainDropEmitterLayer];
}

@end
