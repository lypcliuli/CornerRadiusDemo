//
//  ViewController.m
//  CornerRadiusDemo
//
//  Created by LiuLi on 2018/11/19.
//  Copyright © 2018年 lsd. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "CornerManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *temView = [[UIView alloc] initWithFrame:CGRectMake(40, 200, 300, 300)];
    temView.backgroundColor = [UIColor redColor];
    [self.view addSubview:temView];
    [temView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(200);
        make.width.height.mas_equalTo(300);
    }];
    
//    [[CornerManager shareInstance] cornerByLayer:temView radiusValue:10];
//    [[CornerManager shareInstance] cornerByBezierShapeLayer:temView radiusValue:10];
    [[CornerManager shareInstance] cornerSubCorner:temView byRoundingCorners:UIRectCornerTopLeft|UIRectCornerBottomRight radiusValue:50];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
