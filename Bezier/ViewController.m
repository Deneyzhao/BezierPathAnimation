//
//  ViewController.m
//  Bezier
//
//  Created by deney on 16/7/28.
//  Copyright © 2016年 deney. All rights reserved.
//

#import "ViewController.h"
#import "CirclePath.h"

@interface ViewController ()
{
    CirclePath *_circle;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat w = [UIScreen mainScreen].bounds.size.width;
    CGFloat h = [UIScreen mainScreen].bounds.size.height;
    
    _circle = [[CirclePath alloc]initWithFrame:CGRectMake((w - 50)/2, (h - 50)/2, 50, 50)];
    [self.view addSubview:_circle];
    
    UIButton *start = [[UIButton alloc]initWithFrame:CGRectMake(100, 50, 60, 30)];
    [start setTitle:@"开始" forState:UIControlStateNormal];
    [start setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [start addTarget:self action:@selector(startAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:start];
    
    UIButton *stop = [[UIButton alloc]initWithFrame:CGRectMake(200, 50, 60, 30)];
    [stop setTitle:@"停止" forState:UIControlStateNormal];
    [stop setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [stop addTarget:self action:@selector(stopAnimation) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:stop];
}

- (void)startAnimation{
    [_circle startCircleTransfromAnimationWithDuration:0.6];
}

- (void)stopAnimation{
    [_circle stopCircleTransfromAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
