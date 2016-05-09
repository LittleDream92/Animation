//
//  ViewController.h
//  StackViewDemo
//
//  Created by wanglidan on 16/2/29.
//  Copyright © 2016年 wanglidan. All rights reserved.
//
//StackView 的核心是方便垂直或水平排布多个subview，和Android中的linearLayout相似
//StackView 它会自动为每一个subview创建和添加autolayout contraints,当然你也可以控制subview的大小和位置，可以通过选项配置subview的大小，间距等。

//另一个需要记住的是，Stack View会被当成Container View。所以它是一个不会被渲染的UIView子类。它不像其他UIView子类一样，会被渲染到屏幕上。这也意味着设置其backgroundColor属性或重载drawRect:方法都不会产生任何效果。

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIStackView *peopleStackView;

@end

