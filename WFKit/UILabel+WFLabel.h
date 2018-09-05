//
//  UILabel+WFLabel.h
//  Demo
//
//  Created by Apple on 2018/9/5.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (WFLabel)
/** 新建label frame 文本 文本颜色*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor;
/**新建label frame 文本 文本颜色 背景色*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor;
/**新建label frame 文本 文本颜色 lineBreakMode*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor lineBreakMode:(NSLineBreakMode )lineBreakMode;
/**新建label frame 文本 行数*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor lineNum:(NSInteger)lineNum;
/**新建label frame 文本 lineBreakMode 行数*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor lineBreakMode:(NSLineBreakMode )lineBreakMode lineNum:(NSInteger)lineNum;
@end
