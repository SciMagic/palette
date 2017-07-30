//
//  CHKPaletteView.h
//  Palette
//
//  Created by 超八机 on 2017/7/30.
//  Copyright © 2017年 Hacky. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHKPaletteView;

@protocol CHKPaletteViewDelegate <NSObject>

@optional
- (void)didSelectColor:(CHKPaletteView *)view selectedColor:(UIColor *)color;

@end

typedef enum : NSUInteger {
    PaletteStrip,
    PaletteCircle,
    PaletteHexagon,
} PaletteType;


//use set frame to change the position
@interface CHKPaletteView : UIView

- (instancetype)initWithPaletteType:(PaletteType)type withFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithPaletteImage:(UIImage *)image withFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;

@property(weak, nonatomic) id<CHKPaletteViewDelegate> delegate;

@end
