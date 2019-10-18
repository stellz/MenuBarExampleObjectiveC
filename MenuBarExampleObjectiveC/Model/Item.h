//
//  Item.h
//  MenuBarExampleObjectiveC
//
//  Created by Stela Sadova on 15.10.19.
//  Copyright © 2019 Stela Sadova. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Item : NSObject

@property (nonatomic, readonly) NSString *name;

-(instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
