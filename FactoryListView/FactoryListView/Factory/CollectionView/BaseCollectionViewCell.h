//
//  BaseCollectionViewCell.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCellClickDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCollectionViewCell : UICollectionViewCell

/// 数据对象
@property (readonly) id entity;
/// 代理
@property (nonatomic, weak) id<CollectionViewCellClickDelegate> delegate;

/// 根据数据配置视图
- (void)configure:(id)entity;

///  自动返回cell的identifierId
+ (NSString *)getCellIdentifier;

@end

NS_ASSUME_NONNULL_END
