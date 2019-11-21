//
//  BaseCollectionViewHeader.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewHeaderClickDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCollectionViewHeader : UICollectionReusableView

/// 数据源
@property (strong ,nonatomic) id headerModel;
/// 代理
@property (nonatomic, weak) id<CollectionViewHeaderClickDelegate> delegate;

/// 获取headerId
+ (NSString *)getHeaderIdentifier;

@end

NS_ASSUME_NONNULL_END
