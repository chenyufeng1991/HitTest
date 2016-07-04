//
//  ViewController.m
//  HitTest
//
//  Created by chenyufeng on 7/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"
#import "Masonry.h"
#import "HitTestView.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    HitTestView *bottomView = [[HitTestView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    bottomView.backgroundColor = [UIColor grayColor];
    bottomView.tag = 101;
    [self.view addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@200);
        make.height.equalTo(@200);
    }];

    UITapGestureRecognizer *bottomTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBottomView:)];
    [bottomView addGestureRecognizer:bottomTap];

    HitTestView *topView = [[HitTestView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    topView.backgroundColor = [UIColor yellowColor];
    topView.tag = 102;
    [bottomView addSubview:topView];
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(bottomView.mas_bottom).offset(-50);
        make.left.equalTo(bottomView.mas_right).offset(-50);
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
