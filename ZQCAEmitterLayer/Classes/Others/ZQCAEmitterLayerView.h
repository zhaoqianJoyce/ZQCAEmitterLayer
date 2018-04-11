//
//  ZQCAEmitterLayerView.h
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/10.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZQCAEmitterLayerView : UIView

// 仿写emitterLayer的set和get方法
- (void)setEmitterLayer:(CAEmitterLayer *)emitterLayer;
- (CAEmitterLayer *)emitterLayer;

// 显示动画
- (void)show;
- (void)showWeather:(NSString *)weather;

@end
