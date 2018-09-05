//
//  UIButton+WFButton.h
//  Demo
//
//  Created by Apple on 2018/9/5.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (WFButton)
/**生成Button并给与背景图*/
+(UIButton *) buttonWithBackgroundImage:(NSString *)imageName;
/**生成Button并给与title*/
+(UIButton *) buttonWithTitle:(NSString *)title;
/**生成Button并给与title*/
+(UIButton *) buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor;
/**生成Button并给与title 父视图与点击事件*/
+(UIButton *) buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor superView:(UIView *)superView target:(id)target action:(SEL)action;
/**生成Button 并给与背景图与默认状态title*/
+(UIButton *) buttonWithBackgroundImage:(NSString *)imageName title:(NSString *)title titleColor:(UIColor *)titleColor;
/**生成Button 并给与背景图与默认状态title 父视图与点击事件*/
+(UIButton *) buttonWithBackgroundImage:(NSString *)normalImageName title:(NSString *)title titleColor:(UIColor *)titleColor superView:(UIView *)superView target:(id)target action:(SEL)action;
/**生成Button 并给与默认状态的前景图*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName;
/**生成Button 并给与默认状态的前景图 父视图与点击事件*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName superView:(UIView *)superView target:(id)target action:(SEL)action;
/**生成Button 并给与默认状态的前景图与title 父视图与点击事件*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName normaltitle:(NSString *)normaltitle titleColor:(UIColor *)titleColor superView:(UIView *)superView target:(id)target action:(SEL)action;
/**生成Button 并给与默认状态前景图title 高亮选中前景图与title 父视图与点击事件*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName normalTitle:(NSString *)normalTitle normalTitleColor:(UIColor *)normalTitleColor selectedImage:(NSString *)selectedImage selectedTitle:(NSString *)selectedTitle selectedTitleColor:(UIColor *)selectedTitleColor superView:(UIView *)superView target:(id)target action:(SEL)action;
/**快速切圆，需要在设置frame后调用，autolayout需要在控件真实frame出现后调用*/
- (void)clipsRoundBtn;
/**设置连续点击间隔时间，防止重复点击*/
- (void)setAcceptClickInterval:(NSInteger)interval;

@end
