//
//  ZWImageView.h
//  ZWImageViewDemo
//
//  Created by ZhengWei on 2017/6/28.
//  Copyright © 2017年 ZhengWei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZWImageView : UIView
/**
 *  path:形状
 */
@property (nonatomic, assign) CGPathRef path;
/**
 *  image:图片
 */
@property (nonatomic, strong) UIImage *image;

- (instancetype)init;
- (instancetype)initWithFrame:(CGRect)frame;
- (instancetype)initWithFrame:(CGRect)frame path:(CGPathRef)path image:(UIImage *)image;
@end
