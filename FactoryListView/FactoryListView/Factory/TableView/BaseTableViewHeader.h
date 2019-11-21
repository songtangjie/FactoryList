//
//  BaseTableViewHeader.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewHeaderClickDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableViewHeader : UITableViewHeaderFooterView

/// 数据源
@property (strong ,nonatomic) id headerModel;
/// 代理
@property (nonatomic, weak) id<TableViewHeaderClickDelegate> delegate;

/// 获取headerId
+ (NSString *)getHeaderIdentifier;

@end

NS_ASSUME_NONNULL_END
