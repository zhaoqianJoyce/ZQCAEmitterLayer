//
//  ZQFireViewController.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/9.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQFireViewController.h"
#import "ZQFireView.h"


@interface ZQFireViewController ()

@end

@implementation ZQFireViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZQCAEmitterLayerView *fireView = [[ZQFireView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    [self.view addSubview:fireView];
    [fireView show];
}

@end
