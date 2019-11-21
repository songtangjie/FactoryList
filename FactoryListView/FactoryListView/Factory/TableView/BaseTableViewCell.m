//
//  BaseTableViewCell.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "BaseTableViewCell.h"

@interface BaseTableViewCell ()

// 数据对象
@property (strong, nonatomic, readwrite) id entity;

@end

@implementation BaseTableViewCell

- (void)configure:(id)entity
{
    if (_entity == entity) {
        return;
    }
    
    self.entity = entity;
}

+ (NSString *)getCellIdentifier
{
    return NSStringFromClass([self class]);
}

@end
