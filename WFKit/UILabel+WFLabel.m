//
//  UILabel+WFLabel.m
//  Demo
//
//  Created by Apple on 2018/9/5.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "UILabel+WFLabel.h"


@implementation UILabel (WFLabel)
/** 新建label frame 文字大小 文本 文本颜色*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.font = [UIFont systemFontOfSize:font];
    label.text = title;
    label.textColor = titleColor;
    return label;
}
/**新建label frame 文字大小 文本 文本颜色 背景色*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor backgroundColor:(UIColor *)backgroundColor{
    UILabel * label = [UILabel labelWithFrame:frame Font:font title:title titleColor:titleColor];
    label.backgroundColor = titleColor;
    return label;
}
/**新建label frame 文字大小 文本 文本颜色 lineBreakMode*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor lineBreakMode:(NSLineBreakMode )lineBreakMode{
    UILabel * label = [UILabel labelWithFrame:frame Font:font title:title titleColor:titleColor];
    label.lineBreakMode = lineBreakMode;
    return label;
}
/**新建label frame 文字大小 文本 行数*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor lineNum:(NSInteger)lineNum{
    UILabel * label = [UILabel labelWithFrame:frame Font:font title:title titleColor:titleColor];
    label.numberOfLines = lineNum;
    return label;
}
/**新建label frame 文字大小 文本 lineBreakMode 行数*/
+ (UILabel *)labelWithFrame:(CGRect)frame Font:(CGFloat)font title:(NSString *)title titleColor:(UIColor *)titleColor lineBreakMode:(NSLineBreakMode )lineBreakMode lineNum:(NSInteger)lineNum{
    UILabel * label = [UILabel labelWithFrame:frame Font:font title:title titleColor:titleColor lineBreakMode:lineBreakMode];
    label.numberOfLines = lineNum;
    return label;
}


@end
