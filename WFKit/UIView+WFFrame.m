//
//  UIView+WFFrame.m
//  Demo
//
//  Created by Apple on 2018/9/5.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "UIView+WFFrame.h"

@implementation UIView (WFFrame)
-(CGFloat)x{
    return self.frame.origin.x;
}
-(CGFloat)y{
    return self.frame.origin.y;
}
-(CGFloat)width{
    return self.frame.size.width;
}
-(CGFloat)height{
    return self.frame.size.height;
}

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.x = y;
    self.frame = frame;
}
-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
@end
