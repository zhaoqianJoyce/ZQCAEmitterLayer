//
//  ZQFireworksViewController.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/9.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQFireworksViewController.h"
#import "ZQFireworksView.h"

@interface ZQFireworksViewController ()

@end

@implementation ZQFireworksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZQCAEmitterLayerView *fireworksView = [[ZQFireworksView alloc] initWithFrame:CGRectMake(100, 150, 200, 200)];
    [self.view addSubview:fireworksView];
    [fireworksView show];
}

@end
