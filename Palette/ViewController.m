//
//  ViewController.m
//  Palette
//
//  Created by 超八机 on 2017/7/30.
//  Copyright © 2017年 Hacky. All rights reserved.
//

#import "ViewController.h"
#import "CBJPaletteView.h"

@interface ViewController () <CBJPaletteViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CBJPaletteView *circlePalette = [[CBJPaletteView alloc] initWithPaletteType:PaletteCircle withFrame:CGRectMake(50, 70, 150, 150)];
    circlePalette.delegate = self;
    [self.view addSubview:circlePalette];
    
    CBJPaletteView *stripPalette = [[CBJPaletteView alloc] initWithPaletteType:PaletteStrip withFrame:CGRectMake(230, 90, 100, 200)];
    stripPalette.delegate = self;
    [self.view addSubview:stripPalette];
    
    CBJPaletteView *hexagonPalette = [[CBJPaletteView alloc] initWithPaletteType:PaletteHexagon withFrame:CGRectMake(50, 250, 150, 150)];
    hexagonPalette.delegate = self;
    [self.view addSubview:hexagonPalette];
    
    CBJPaletteView *paletteWithImg = [[CBJPaletteView alloc] initWithPaletteImage:[UIImage imageNamed:@"circle"] withFrame:CGRectMake(210, 300, 150, 150)];
    paletteWithImg.delegate = self;
    [self.view addSubview:paletteWithImg];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didSelectColor:(CBJPaletteView *)view selectedColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}


@end
