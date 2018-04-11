//
//  ZQTabBarController.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/9.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQTabBarController.h"
#import "ZQRainViewController.h"
#import "ZQSnowViewController.h"
#import "ZQFireViewController.h"
#import "ZQFireworksViewController.h"

@interface ZQTabBarController ()

@end

@implementation ZQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加所有控制器
    [self addAllChildViewController];
}

/**
 *  添加所有控制器
 */
- (void)addAllChildViewController {
    
    [self addOneChildViewController:[[ZQRainViewController alloc] init] withTitle:@"Rain" andImage:@"rain_normal" andSelectedImage:@"rain_selected"];
    [self addOneChildViewController:[[ZQSnowViewController alloc] init] withTitle:@"Snow" andImage:@"snow_normal" andSelectedImage:@"snow_selected"];
    [self addOneChildViewController:[[ZQFireViewController alloc] init] withTitle:@"Fire" andImage:@"fire_normal" andSelectedImage:@"fire_selected"];
    [self addOneChildViewController:[[ZQFireworksViewController alloc] init] withTitle:@"Fireworks" andImage:@"fireworks_normal" andSelectedImage:@"fireworks_selected"];
}

/**
 *  添加一个子控制器
 *
 *  @param viewController 控制器
 *  @param title          导航栏标题
 *  @param image          tabBar默认图片
 *  @param selectedImage  tabBar选中图片
 */
- (void)addOneChildViewController:(UIViewController *)viewController withTitle:(NSString *)title andImage:(NSString *)image andSelectedImage:(NSString *)selectedImage {

    UINavigationController *navVc       = [[UINavigationController alloc] initWithRootViewController:viewController];
    navVc.tabBarItem.title              = title;
    navVc.tabBarItem.image              = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navVc.tabBarItem.selectedImage      = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.navigationItem.title = title;
    [self addChildViewController:navVc];
}
@end
