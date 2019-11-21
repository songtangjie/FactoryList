//
//  TableViewHeaderClickDelegate.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

/// 默认的key
#define HeaderDefaultParamKey @"HeaderDefaultParamKey"

NS_ASSUME_NONNULL_BEGIN

// 头部点击事件类型
typedef NS_ENUM (NSInteger,HeaderClickType)
{
    HeaderClickTypeContent      = 0,    //点击header
    HeaderClickTypeMore         = 1,    //点击更多
};


@protocol TableViewHeaderClickDelegate <NSObject>

- (void)clickHeaderEvent:(HeaderClickType)clickType params:(NSMutableDictionary *)params;

@end

NS_ASSUME_NONNULL_END

