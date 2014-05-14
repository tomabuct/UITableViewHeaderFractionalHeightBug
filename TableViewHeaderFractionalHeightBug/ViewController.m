//
//  ViewController.m
//  TableViewHeaderFractionalHeightBug
//
//  Created by Tom Abraham on 5/14/14.
//  Copyright (c) 2014 Tom Abraham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

NSString *const kCellID = @"Cell";

@implementation ViewController

- (instancetype)init {
  if (self = [super init]) {
    self.tableView.backgroundColor = [UIColor blueColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kCellID];

    UIView *tableHeaderView = [[UIView alloc] init];
    tableHeaderView.backgroundColor = [UIColor redColor];
    self.tableView.tableHeaderView = tableHeaderView;
  }
  return self;
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellID forIndexPath:indexPath];
  cell.textLabel.text = indexPath.row == 0 ? @"Make tableHeaderView's height 0.5" : @"Make tableHeaderView's height 1";
  return cell;
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  UIView *headerView = tableView.tableHeaderView;
  headerView.frame = CGRectMake(0, 0, 0, (indexPath.row == 0) ? 0.5 : 1);
  tableView.tableHeaderView = headerView;
}

@end
