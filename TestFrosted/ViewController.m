//
//  ViewController.m
//  TestFrosted
//
//  Created by mac on 14-4-7.
//  Copyright (c) 2014年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    img.image = [UIImage imageNamed:@"1.jpg"];
    [self.view addSubview:img];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(50, 200, 100, 60);
    [btn setTitle:@"增加效果 " forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void)touch
{
    if (_frostedGlass) {
        [_frostedGlass pause];
        [_frostedGlass clear];
        [_frostedGlass removeFromSuperview];
        self.frostedGlass = nil;
    }else {
    
    _frostedGlass = [[FrostedGlassView alloc] initWithFrame:CGRectMake(0, 100, 320, 100)];
    _frostedGlass.blurRadius = 0.0;
    _frostedGlass.lightColor = [UIColor whiteColor];
    _frostedGlass.lightStrength = 0.5;
    [_frostedGlass pause];
    [self.view addSubview:_frostedGlass];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
