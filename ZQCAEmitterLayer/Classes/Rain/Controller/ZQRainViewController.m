//
//  ZQRainViewController.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/10.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQRainViewController.h"
#import "ZQCAEmitterLayerView.h"
#import "ZQWeatherView.h"

@implementation ZQRainViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    ZQCAEmitterLayerView *rainView = [[ZQWeatherView alloc] initWithFrame:CGRectMake(0, 64, 200, 200)];
    [self.view addSubview:rainView];
    [rainView showWeather:@"rain"];
}

@end
