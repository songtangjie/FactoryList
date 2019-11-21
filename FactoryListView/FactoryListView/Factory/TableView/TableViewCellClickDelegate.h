//
//  TableViewCellClickDelegate.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 默认的key
#define DefaultParamKey @"DefaultParamKey"

@class BaseTableViewCell;

// cell点击事件类型
typedef NS_ENUM (NSInteger,CellClickType)
{
    CellClickTypeFloorContent     = 0,    //选中cell
    CellClickTypeJumpToVC         = 1,    //跳转
};


@protocol TableViewCellClickDelegate <NSObject>

- (void)clickCellEvent:(CellClickType)clickType cell:(BaseTableViewCell *)cell params:(NSMutableDictionary *)params;

@end

