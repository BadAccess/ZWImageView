//
//  ZWImageView.m
//  ZWImageViewDemo
//
//  Created by ZhengWei on 2017/6/28.
//  Copyright © 2017年 ZhengWei. All rights reserved.
//

#import "ZWImageView.h"

@implementation ZWImageView
{
    CAShapeLayer *maskLayer;
    CALayer *contentLayer;
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)init{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setUpLayers];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setUpLayers];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame path:(CGPathRef)path image:(UIImage *)image{
    self = [super initWithFrame:frame];
    if (self) {
        _path = path;
        _image = image;
        [self setUpLayers];
    }
    return self;
}

- (void)setUpLayers{
    maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.fillColor = [UIColor blackColor].CGColor;
    maskLayer.strokeColor = [UIColor redColor].CGColor;
    //拉伸范围
    //    maskLayer.contentsCenter = CGRectMake(0.5, 0.5, 0.1, 0.1);
    maskLayer.contentsScale = [UIScreen mainScreen].scale;
    maskLayer.path = _path;
    
    contentLayer = [CALayer layer];
    contentLayer.frame = self.bounds;
    //居中裁剪
    contentLayer.contentsGravity = kCAGravityResizeAspectFill;
    contentLayer.mask = maskLayer;
    contentLayer.contents = (__bridge id _Nullable)(_image.CGImage);
    [self.layer addSublayer:contentLayer];
}

- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    maskLayer.frame = self.bounds;
    contentLayer.frame = self.bounds;
}

- (void)setPath:(CGPathRef)path{
    _path = path;
    maskLayer.path = path;
}

- (void)setImage:(UIImage *)image{
    _image = image;
    contentLayer.contents = (__bridge id _Nullable)(image.CGImage);
}

@end
