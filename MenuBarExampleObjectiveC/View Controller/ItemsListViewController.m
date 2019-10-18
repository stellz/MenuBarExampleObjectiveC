//
//  ItemsListViewController.m
//  MenuBarExampleObjectiveC
//
//  Created by Stela Sadova on 15.10.19.
//  Copyright © 2019 Stela Sadova. All rights reserved.
//

#import "ItemsListViewController.h"
#import "Item.h"
#import "ItemViewController.h"
#import "MenuBarExampleObjectiveC-Swift.h"

@interface ItemsListViewController () <MenuBarDelegate>

@property (nonatomic) NSArray<NSArray *> *data;
@property (nonatomic) NSUInteger selectedIndex;

@end

@implementation ItemsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"reuseIdentifier"];

    [self addMenuBar];
    [self addItemsToList];

    self.selectedIndex = 0;
}

- (void)addMenuBar {
    MenuBar *menu = [[MenuBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width - 2*15, self.navigationController.navigationBar.intrinsicContentSize.height)];
    menu.items = @[@"Fruits", @"Veggies"];
    menu.delegate = self;
    self.navigationItem.titleView = menu;
}

- (void)addItemsToList {
    NSArray *firstFruitGroup = @[@"Apple", @"Pear", @"Cherries"];
    NSArray *secondFruitGroup = @[@"Kiwi", @"Orange", @"Banana"];
    NSArray *firstVeggieGroup = @[@"Tomato", @"Cucumber", @"Pepper"];
    NSArray *secondVeggieGroup = @[@"Carrot", @"Cabbage", @"Brokoli"];

    self.data = @[@[firstFruitGroup, secondFruitGroup], @[firstVeggieGroup, secondVeggieGroup]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *selectedMenuData = [self.data objectAtIndex:self.selectedIndex];
    NSArray *sectionData = [selectedMenuData objectAtIndex:self.selectedIndex];
    return sectionData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];

    NSArray *selectedMenuData = [self.data objectAtIndex:self.selectedIndex];
    NSArray *sectionData = [selectedMenuData objectAtIndex:indexPath.section];
    cell.textLabel.text = [sectionData objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSArray *selectedMenuData = [self.data objectAtIndex:self.selectedIndex];
    NSArray *sectionData = [selectedMenuData objectAtIndex:indexPath.section];
    NSString *name = [sectionData objectAtIndex:indexPath.row];

    Item *item = [[Item alloc] initWithName:name];
    ItemViewController *itemVC = [[ItemViewController alloc] initWithItem:item];

    [self.navigationController pushViewController:itemVC animated:YES];
}

#pragma mark - Menu bar delegate

- (void)menuBar:(MenuBar * _Nonnull)menuBar didSelect:(NSInteger)index {
    self.selectedIndex = index;
    NSLog(@"%ld", (long)index);
    [self.tableView reloadData];
}

@end

