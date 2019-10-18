//
//  ItemViewController.h
//  MenuBarExampleObjectiveC
//
//  Created by Stela Sadova on 15.10.19.
//  Copyright © 2019 Stela Sadova. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Item;
@interface ItemViewController : UIViewController

- (instancetype)initWithItem:(Item *)item;

@end

NS_ASSUME_NONNULL_END
