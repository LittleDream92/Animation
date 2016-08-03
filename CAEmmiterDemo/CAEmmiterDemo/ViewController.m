//
//  ViewController.m
//  CAEmmiterDemo
//
//  Created by Meng Fan on 16/8/3.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "ViewController.h"
#import "MFAnimationView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *rainBtn;
@property (weak, nonatomic) IBOutlet UIButton *sakuraBtn;

@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) MFAnimationView *animationView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backgroundView = [[UIView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.backgroundView];
    
    [self.view bringSubviewToFront:self.rainBtn];
    [self.view bringSubviewToFront:self.sakuraBtn];
    
    self.animationView = [[MFAnimationView alloc] initWithFrame:self.view.frame effect:@"rain"];
    [self.backgroundView addSubview:self.animationView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rainAction:(id)sender {
    
    self.animationView=nil;
    self.animationView=[[MFAnimationView alloc] initWithFrame:self.view.frame effect:@"rain"];
    [self.backgroundView addSubview:self.animationView];
}

- (IBAction)sakuraAction:(id)sender {
    
    self.animationView=nil;
    self.animationView=[[MFAnimationView alloc] initWithFrame:self.view.frame effect:@"sakura"];
    [self.backgroundView addSubview:self.animationView];
}


@end
