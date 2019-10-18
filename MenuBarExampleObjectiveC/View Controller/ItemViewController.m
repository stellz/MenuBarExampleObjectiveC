//
//  ItemViewController.m
//  MenuBarExampleObjectiveC
//
//  Created by Stela Sadova on 15.10.19.
//  Copyright © 2019 Stela Sadova. All rights reserved.
//

#import "ItemViewController.h"
#import "Item.h"

@interface ItemViewController ()

@property (nonatomic) Item *item;

@end

@implementation ItemViewController


- (instancetype)initWithItem:(Item *)item {
    self = [super init];
    if (self) {
        [self setItem:item];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    UILabel *label = [UILabel new];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = self.item.name;
    [self.view addSubview:label];

    label.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [label.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
                                              [label.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
                                              [label.heightAnchor constraintEqualToConstant:100],
                                              [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
                                              ]
     ];
}

@end
