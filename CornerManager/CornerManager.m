//
//  CornerManager.m
//  CornerRadiusDemo
//
//  Created by LiuLi on 2018/11/20.
//  Copyright © 2018年 lsd. All rights reserved.
//

#import "CornerManager.h"

@implementation CornerManager

+ (instancetype)shareInstance
{
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[CornerManager alloc] init];
    });
    return instance;
}

- (void)cornerByLayer:(UIView *)view radiusValue:(CGFloat)radiusValue {
    if (radiusValue > 0) {
        view.layer.cornerRadius = radiusValue;
        view.layer.masksToBounds = YES;
    }
}

- (void)cornerByBezierShapeLayer:(UIView *)view radiusValue:(CGFloat)radiusValue {
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:radiusValue];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = bezierPath.CGPath;
    view.layer.mask = layer;
}

- (void)cornerSubCorner:(UIView *)view byRoundingCorners:(UIRectCorner)corners radiusValue:(CGFloat)radiusValue {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:view.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radiusValue, radiusValue)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = view.bounds;
    maskLayer.path = maskPath.CGPath;
    view.layer.mask = maskLayer;
}

@end
