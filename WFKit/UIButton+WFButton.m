//
//  UIButton+WFButton.m
//  Demo
//
//  Created by Apple on 2018/9/5.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "UIButton+WFButton.h"
#import "UIView+WFFrame.h"
@implementation UIButton (WFButton)
/**生成Button并给与背景图*/
+(UIButton *) buttonWithBackgroundImage:(NSString *)imageName{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    return btn;
}
/**生成Button并给与title*/
+(UIButton *) buttonWithTitle:(NSString *)title{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}
/**生成Button并给与title*/
+(UIButton *) buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor{
    UIButton * btn = [UIButton buttonWithTitle:title];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return btn;
}
/**生成Button并给与title 父视图与点击事件*/
+(UIButton *) buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor superView:(UIView *)superView target:(id)target action:(SEL)action{
    UIButton * btn = [UIButton buttonWithTitle:title titleColor:titleColor];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [superView addSubview:btn];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
/**生成Button 并给与背景图与默认状态title*/
+(UIButton *) buttonWithBackgroundImage:(NSString *)backgroundImageName title:(NSString *)title titleColor:(UIColor *)titleColor{
    UIButton * btn = [UIButton buttonWithTitle:title titleColor:titleColor];
    [btn setBackgroundImage:[UIImage imageNamed:backgroundImageName] forState:UIControlStateNormal];
    return btn;
}
/**生成Button 并给与背景图与默认状态title 父视图与点击事件*/
+(UIButton *) buttonWithBackgroundImage:(NSString *)backgroundImageName title:(NSString *)title titleColor:(UIColor *)titleColor superView:(UIView *)superView target:(id)target action:(SEL)action{
    UIButton * btn = [UIButton buttonWithBackgroundImage:backgroundImageName title:title titleColor:titleColor];
    [superView addSubview:btn];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
/**生成Button 并给与默认状态的前景图*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    [btn setTitle:@"" forState:UIControlStateNormal];
    return btn;
}
/**生成Button 并给与默认状态的前景图 父视图与点击事件*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName superView:(UIView *)superView  target:(id)target action:(SEL)action{
    UIButton * btn = [UIButton buttonWithNormalImage:normalImageName];
    [superView addSubview:btn];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
/**生成Button 并给与默认状态的前景图与title 父视图与点击事件*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName normaltitle:(NSString *)normaltitle titleColor:(UIColor *)titleColor superView:(UIView *)superView target:(id)target action:(SEL)action{
    UIButton * btn = [UIButton buttonWithTitle:normaltitle titleColor:titleColor superView:superView target:target action:action];
    [btn setImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
    return btn;
}
/**生成Button 并给与默认状态前景图title 高亮选中前景图与title 父视图与点击事件*/
+(UIButton *) buttonWithNormalImage:(NSString *)normalImageName normalTitle:(NSString *)normalTitle normalTitleColor:(UIColor *)normalTitleColor selectedImage:(NSString *)selectedImage selectedTitle:(NSString *)selectedTitle selectedTitleColor:(UIColor *)selectedTitleColor superView:(UIView *)superView target:(id)target action:(SEL)action{
    UIButton * btn = [UIButton buttonWithNormalImage:normalImageName normaltitle:normalTitle titleColor:normalTitleColor superView:superView target:self action:action];
    [btn setTitle:selectedTitle forState:UIControlStateSelected];
    [btn setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    return btn;
}
-(void)setImageName:(NSString *)imageName forState:(UIControlState)state{
    [self setImage:[UIImage imageNamed:imageName] forState:state];
}

/**
快速切圆，需要在设置frame后调用，autolayout需要在控件真实frame出现后调用*/
- (void)clipsRoundBtn{
    self.layer.cornerRadius = self.width/2;
    self.layer.masksToBounds = YES;
}
/**防止重复点击，设定重复响应间隔*/
- (void)setAcceptClickInterval:(NSInteger)interval {
    
    self.userInteractionEnabled = NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(interval+3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.userInteractionEnabled = YES;
    });
}
@end
