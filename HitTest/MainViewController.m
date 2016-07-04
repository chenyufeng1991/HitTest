//
//  ViewController.m
//  HitTest
//
//  Created by chenyufeng on 7/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"
#import "Masonry.h"
#import "TopView.h"
#import "BottomView.h"

@interface MainViewController ()

@end

/**
 *  - (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event;   
 // recursively calls -pointInside:withEvent:. point is in the receiver's coordinate system
 
 
 - (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event;   
 // default returns YES if point is in bounds

 */
@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    BottomView *bottomView = [[BottomView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    bottomView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@200);
        make.height.equalTo(@200);
    }];

    UITapGestureRecognizer *bottomTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBottomView:)];
    [bottomView addGestureRecognizer:bottomTap];

    TopView *topView = [[TopView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    topView.backgroundColor = [UIColor yellowColor];
    [bottomView addSubview:topView];
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(bottomView);
        make.height.equalTo(@100);
        make.width.equalTo(@100);
    }];

    UITapGestureRecognizer *topTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTopView:)];
    [topView addGestureRecognizer:topTap];
}

- (void)tapBottomView:(id)sender
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)tapTopView:(id)sender
{
    NSLog(@"%s",__FUNCTION__);
}

@end
