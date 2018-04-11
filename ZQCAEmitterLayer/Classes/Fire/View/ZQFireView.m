//
//  ZQFireView.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/10.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQFireView.h"

@implementation ZQFireView

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
    self.emitterLayer.emitterMode     = kCAEmitterLayerPoints;
    self.emitterLayer.renderMode      = kCAEmitterLayerBackToFront;
}

/**
 *  设置emitterCell的属性并与emitterLayer关联显示动画效果
 */
- (void)show {
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.birthRate      = 200.f;
    emitterCell.lifetime       = 10.f;
    emitterCell.velocity       = 10.f;
    emitterCell.velocityRange  = 15.f;
    emitterCell.emissionRange  = 2 * M_PI;
    emitterCell.alphaSpeed    -= 0.5f;
    emitterCell.contents       = (__bridge id _Nullable)([UIImage imageNamed:@"fire_selected"].CGImage);
    
    self.emitterLayer.emitterCells = @[emitterCell];
}

@end
