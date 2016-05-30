//
//  ViewController.m
//  CircleScrollView
//
//  Created by Meng Fan on 16/5/9.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "ViewController.h"
#import "CycleScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CycleScrollView *scrollView = [[CycleScrollView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    
    UIImage *image1 = [UIImage imageNamed:@"1.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"2.gif"];
    UIImage *image3 = [UIImage imageNamed:@"3.jpg"];
    UIImage *image4 = [UIImage imageNamed:@"4.jpg"];
    UIImage *image5 = [UIImage imageNamed:@"5.png"];
    UIImage *image6 = [UIImage imageNamed:@"6.png"];
    UIImage *image7 = [UIImage imageNamed:@"7.jpg"];
    
    scrollView.imgs = @[image1, image2, image3, image4, image5, image6, image7];
    
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
