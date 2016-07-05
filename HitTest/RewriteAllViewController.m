//
//  RewriteAllViewController.m
//  HitTest
//
//  Created by chenyufeng on 7/5/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "RewriteAllViewController.h"
#import "Masonry.h"
#import "RewriteAllView.h"

@interface RewriteAllViewController ()

@end

@implementation RewriteAllViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    RewriteAllView *bottomView = [[RewriteAllView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    bottomView.backgroundColor = [UIColor grayColor];
    bottomView.tag = 101;
    [self.view addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];
    UITapGestureRecognizer *bottomTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBottomView:)];
    [bottomView addGestureRecognizer:bottomTap];

    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    topView.backgroundColor = [UIColor yellowColor];
    topView.tag = 102;
    [bottomView addSubview:topView];
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(bottomView);
        make.height.equalTo(@200);
        make.width.equalTo(@200);
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
