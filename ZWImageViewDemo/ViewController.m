//
//  ViewController.m
//  ZWImageViewDemo
//
//  Created by ZhengWei on 2017/6/28.
//  Copyright © 2017年 ZhengWei. All rights reserved.
//

#import "ViewController.h"
#import "ZWImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //三角形
    UIBezierPath *path1 = [[UIBezierPath alloc] init];
    path1.lineCapStyle = kCGLineCapRound;
    path1.lineJoinStyle = kCGLineJoinRound;
    [path1 moveToPoint:CGPointMake(25, 0)];
    [path1 addLineToPoint:CGPointMake(0, 50)];
    [path1 addLineToPoint:CGPointMake(50, 50)];
    [path1 fill];
    
    ZWImageView *imageView1 = [[ZWImageView alloc] initWithFrame:CGRectMake(20, 100, 50, 50) path:path1.CGPath image:[UIImage imageNamed:@"image.jpeg"]];
    [self.view addSubview:imageView1];
    
    //波浪
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    path2.lineCapStyle = kCGLineCapRound;
    path2.lineJoinStyle = kCGLineJoinRound;
    [path2 moveToPoint:CGPointMake(0, 50)];
    [path2 addLineToPoint:CGPointMake(0, 25)];
    //    [path addArcWithCenter:CGPointMake(50, 50) radius:50 startAngle:M_PI endAngle:M_PI_2 clockwise:YES];
    [path2 addCurveToPoint:CGPointMake(50, 25) controlPoint1:CGPointMake(15, 15) controlPoint2:CGPointMake(35, 35)];
    [path2 addLineToPoint:CGPointMake(50, 50)];
    [path2 fill];
    
    ZWImageView *imageView2 = [[ZWImageView alloc] initWithFrame:CGRectMake(120, 100, 50, 50) path:path2.CGPath image:[UIImage imageNamed:@"image.jpeg"]];
    [self.view addSubview:imageView2];
    
    //椭圆形
    UIBezierPath *path3 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 5, 50, 100)];
    [path3 fill];
    
    ZWImageView *imageView3 = [[ZWImageView alloc] initWithFrame:CGRectMake(220, 100, 50, 120) path:path3.CGPath image:[UIImage imageNamed:@"image.jpeg"]];
    [self.view addSubview:imageView3];
    
    
    //扇形
    UIBezierPath *path4 = [[UIBezierPath alloc] init];
    [path4 moveToPoint:CGPointMake(50, 100)];
    [path4 addLineToPoint:CGPointMake(0, 50)];
    [path4 addArcWithCenter:CGPointMake(50, 100) radius:70.7 startAngle:M_PI_4 * 5 endAngle:M_PI_4 * 7 clockwise:YES];
    [path4 fill];
    
    ZWImageView *imageView4 = [[ZWImageView alloc] initWithFrame:CGRectMake(20, 180, 100, 100) path:path4.CGPath image:[UIImage imageNamed:@"image.jpeg"]];
    [self.view addSubview:imageView4];
    
    //四分之三圆
    UIBezierPath *path5 = [[UIBezierPath alloc] init];
    [path5 moveToPoint:CGPointMake(0, 100)];
    [path5 addLineToPoint:CGPointMake(0, 50)];
    [path5 addArcWithCenter:CGPointMake(50, 50) radius:50 startAngle:M_PI endAngle:M_PI_2 clockwise:YES];
    [path5 fill];
    
    ZWImageView *imageView5 = [[ZWImageView alloc] initWithFrame:CGRectMake(20, 300, 100, 100) path:path5.CGPath image:[UIImage imageNamed:@"image.jpeg"]];
    [self.view addSubview:imageView5];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
