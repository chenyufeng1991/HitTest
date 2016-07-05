//
//  RewriteTopViewController.m
//  HitTest
//
//  Created by chenyufeng on 7/5/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "RewriteTopViewController.h"
#import "Masonry.h"
#import "RewriteView.h"

@interface RewriteTopViewController ()

@end

@implementation RewriteTopViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
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

    RewriteView *topView = [[RewriteView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    topView.backgroundColor = [UIColor yellowColor];
    topView.tag = 102;
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
