//
//  ZQWeatherView.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/10.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQWeatherView.h"

@implementation ZQWeatherView
- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self == [super initWithFrame:frame]) {
        
        // 初始化设置
        [self initEmitterLayerProperties];
    }
    return self;
}

/**
 *  设置emitterLayer的属性
 */
- (void)initEmitterLayerProperties {
    
    self.emitterLayer.emitterSize     = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.frame.origin.x, self.frame.origin.y);
}

/**
 *  设置emitterCell的属性并与emitterLayer关联显示动画效果
 *
 *  @param weather 天气名称
 */
- (void)showWeather:(NSString *)weather {
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.birthRate      = 20.f;
    emitterCell.lifetime       = 100.f;
    emitterCell.velocity       = 10.f;
    emitterCell.velocityRange  = 3.f;
    emitterCell.yAcceleration  = 5.f;
    emitterCell.emissionRange  = 6 * M_2_PI;
    emitterCell.contents       = (__bridge id _Nullable)([UIImage imageNamed:weather].CGImage);
    
    self.emitterLayer.emitterCells = @[emitterCell];
}
@end
