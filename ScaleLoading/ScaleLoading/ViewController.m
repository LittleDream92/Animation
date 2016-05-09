//
//  ViewController.m
//  ScaleLoading
//
//  Created by wanglidan on 16/3/1.
//  Copyright © 2016年 wanglidan. All rights reserved.
//

/*
 ****************************************************
 *  demo:自定义的动画
 *  
 *
 ****************************************************
 */
#import "ViewController.h"
#import "ScaleLoadingView.h"

@interface ViewController ()

@property (nonatomic, strong) ScaleLoadingView *animationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _animationView = [[ScaleLoadingView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    _animationView.center = self.view.center;
    [_animationView customAnimations];
    [self.view addSubview:_animationView];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:9 target:self selector:@selector(restartAnimation) userInfo:nil repeats:YES];
    [timer fire];
}
- (void)restartAnimation
{
    [_animationView removeFromSuperview];
    ScaleLoadingView *customAnimationView = [[ScaleLoadingView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    customAnimationView.center = self.view.center;
    [customAnimationView customAnimations];
    [self.view addSubview:customAnimationView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
