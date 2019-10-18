//
//  Item.m
//  MenuBarExampleObjectiveC
//
//  Created by Stela Sadova on 15.10.19.
//  Copyright © 2019 Stela Sadova. All rights reserved.
//

#import "Item.h"

@interface Item()

@property (nonatomic) NSString *name;

@end

@implementation Item

-(instancetype)initWithName:(NSString *)name {

    self = [super init];

    if (self) {
        self.name = name;
    }
    return self;
}

@end
