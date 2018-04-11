//
//  ZQCAEmitterLayerView.m
//  ZQCAEmitterLayer
//
//  Created by Joyce on 18/4/10.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ZQCAEmitterLayerView.h"

@interface ZQCAEmitterLayerView () {

    CAEmitterLayer *_emitterLayer;
}

@end

@implementation ZQCAEmitterLayerView

/**
 *  CAEmitterLayer替换CALayer
 *
 *  @return CAEmitterLayer
 */
+ (Class)layerClass {

    return [CAEmitterLayer class];
}

/**
 *  初始化
 *
 *  @param frame ZQCAEmitterLayerView的大小
 *
 *  @return ZQCAEmitterLayerView实例对象
 */
- (instancetype)initWithFrame:(CGRect)frame {

    if (self == [super initWithFrame:frame]) {
        
        _emitterLayer = (CAEmitterLayer *)self.layer;
    }
    return self;
}

/**
 *  emitterLayer的set方法
 *
 *  @param emitterLayer emitterLayer
 */
- (void)setEmitterLayer:(CAEmitterLayer *)emitterLayer {

    _emitterLayer = emitterLayer;
}

/**
 *  emitterLayer的get方法
 *
 *  @return emitterLayer
 */
- (CAEmitterLayer *)emitterLayer {

    return _emitterLayer;
}

/**
 *  显示动画的空实现
 */
- (void)show {

}

/**
 *  显示动画的空实现
 *
 *  @param weather 天气名称
 */
- (void)showWeather:(NSString *)weather {

}
@end
