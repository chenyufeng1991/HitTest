//
//  ViewController.m
//  HitTest
//
//  Created by chenyufeng on 7/4/16.
//  Copyright © 2016 chenyufengweb. All rights reserved.
//

#import "MainViewController.h"
#import "Masonry.h"
#import "RewriteTopViewController.h"
#import "RewriteSuperViewController.h"
#import "RewriteSubViewController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTabelView;
@property (nonatomic, strong) NSArray *myArray;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.myTabelView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    self.myTabelView.backgroundColor = [UIColor whiteColor];
    self.myTabelView.dataSource = self;
    self.myTabelView.delegate = self;
    [self.view addSubview:self.myTabelView];
    [self.myTabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    self.myArray = [[NSArray alloc] initWithObjects:@"重写顶部View",@"重写父视图",@"重写所有视图", nil];

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

        case 2:
        {
            RewriteSubViewController *vc = [[RewriteSubViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;

        default:
            break;
    }
    
}


@end
