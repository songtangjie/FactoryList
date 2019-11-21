//
//  BaseTableViewHeader.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "BaseTableViewHeader.h"

@implementation BaseTableViewHeader

+ (NSString *)getHeaderIdentifier
{
    return NSStringFromClass([self class]);
}


@end
