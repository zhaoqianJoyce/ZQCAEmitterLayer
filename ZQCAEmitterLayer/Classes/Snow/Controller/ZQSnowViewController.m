//
//  ZQSnowViewController.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/9.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQSnowViewController.h"
#import "ZQWeatherView.h"

@interface ZQSnowViewController ()

@end

@implementation ZQSnowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZQCAEmitterLayerView *snowView = [[ZQWeatherView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 200 ) * 0.5, 64, 200, 200)];
    [self.view addSubview:snowView];
    [snowView showWeather:@"snow"];
}

@end
