//
//  CornerManager.h
//  CornerRadiusDemo
//
//  Created by LiuLi on 2018/11/20.
//  Copyright © 2018年 lsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CornerManager : NSObject

+ (instancetype)shareInstance;

/** 不推荐的做法，当一个页面只有少量圆角图片时才推荐使用(4角全切)  */
- (void)cornerByLayer:(UIView *)view radiusValue:(CGFloat)radiusValue;

/** 贝塞尔曲线切割圆角(4角全切)（不推荐，掉帧严重）  */
- (void)cornerByBezierShapeLayer:(UIView *)view radiusValue:(CGFloat)radiusValue;


/**
 且部分圆角
 
 @param view view
 @param corners 圆角位置
 @param radiusValue 半径
 
 圆角位置类型共有以下几种:
 
 * UIRectCornerTopLeft
 
 * UIRectCornerTopRight
 
 * UIRectCornerBottomLeft
 
 * UIRectCornerBottomRight
 
 * UIRectCornerAllCorners
 */
- (void)cornerSubCorner:(UIView *)view byRoundingCorners:(UIRectCorner)corners radiusValue:(CGFloat)radiusValue;

@end
