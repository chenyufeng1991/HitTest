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
#import "RewriteTopViewController.h"
#import "RewriteSuperViewController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTabelView;
@property (nonatomic, strong) NSArray *myArray;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

#if 0
    HitTestView *containerView = [[HitTestView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    containerView.backgroundColor = [UIColor colorWithWhite:0.667 alpha:1.000];
    containerView.tag = 100;
    [self.view addSubview:containerView];
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@100);
        make.height.equalTo(@100);
    }];

    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    bottomView.backgroundColor = [UIColor grayColor];
    bottomView.tag = 101;
    [containerView addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(containerView);
        make.width.equalTo(@50);
        make.height.equalTo(@50);
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
#endif

    self.myTabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    self.myTabelView.backgroundColor = [UIColor whiteColor];
    self.myTabelView.dataSource = self;
    self.myTabelView.delegate = self;
    [self.view addSubview:self.myTabelView];
    [self.myTabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    self.myArray = [[NSArray alloc] initWithObjects:@"重写顶部View",@"重写父视图", nil];

}

- (void)tapBottomView:(id)sender
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)tapTopView:(id)sender
{
    NSLog(@"%s",__FUNCTION__);
}

#pragma mark - UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.myArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyUITableViewCell"];

    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyUITableViewCell"];
    }

    cell.textLabel.text = self.myArray[indexPath.row];

    return cell;
}

#pragma mark - UITableView Delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    switch (indexPath.row) {
        case 0:
        {
            RewriteTopViewController *vc = [[RewriteTopViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;

        case 1:
        {
            RewriteSuperViewController *vc = [[RewriteSuperViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;

        default:
            break;
    }
    
}


@end
