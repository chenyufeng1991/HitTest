//
//  RewriteSuperViewController.m
//  HitTest
//
//  Created by chenyufeng on 7/5/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "RewriteSuperViewController.h"
#import "RewriteSuperView.h"
#import "Masonry.h"

@interface RewriteSuperViewController ()

@end

@implementation RewriteSuperViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    RewriteSuperView *containerView = [[RewriteSuperView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    containerView.backgroundColor = [UIColor colorWithWhite:0.667 alpha:1.000];
    containerView.tag = 100;
    [self.view addSubview:containerView];
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    bottomView.backgroundColor = [UIColor grayColor];
    bottomView.tag = 101;
    [containerView addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(containerView);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    UITapGestureRecognizer *bottomTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBottomView:)];
    [bottomView addGestureRecognizer:bottomTap];

    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    topView.backgroundColor = [UIColor yellowColor];
    topView.tag = 102;
    [containerView addSubview:topView];
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(containerView);
        make.height.equalTo(@200);
        make.width.equalTo(@200);
    }];
    UITapGestureRecognizer *topTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTopView:)];
    [topView addGestureRecognizer:topTap];

    containerView.top = topView;
    containerView.bottom = bottomView;
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
