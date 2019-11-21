//
//  CollectionViewCellClickDelegate.h.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 默认的key
#define DefaultParamKey @"DefaultParamKey"

@class BaseCollectionViewCell;

// cell点击事件类型
typedef NS_ENUM (NSInteger,CellClickType)
{
    CellClickTypeFloorContent     = 0,    //选中cell
    CellClickTypeJumpToVC         = 1,    //跳转
};

NS_ASSUME_NONNULL_BEGIN

@protocol CollectionViewCellClickDelegate <NSObject>

- (void)clickCellEvent:(CellClickType)clickType cell:(BaseCollectionViewCell *)cell params:(NSMutableDictionary *)params;

@end

NS_ASSUME_NONNULL_END
