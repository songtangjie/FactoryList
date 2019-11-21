//
//  BaseTableViewCell.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCellClickDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseTableViewCell : UITableViewCell

/// 数据对象
@property (readonly) id entity;
/// 代理
@property (nonatomic, weak) id<TableViewCellClickDelegate> delegate;

/**
 根据数据配置视图
 
 @param entity 数据对象
 */
- (void)configure:(id)entity;

/**
 *  自动返回cell的identifierId格式为【名称+Id】
 *
 *  @return 格式为【名称+Id】(如：XXXViewCellId)
 */
+ (NSString *)getCellIdentifier;

@end

NS_ASSUME_NONNULL_END
