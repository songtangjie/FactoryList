//
//  BaseViewModel.h
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewModel : NSObject

/// cellIdentifier
@property (strong, nonatomic) NSString *cellIdentifier;
/// 数据源
@property (readonly) id entity;
/// 子数据【用于添加多个重复cell】
@property (strong, nonatomic) NSArray *modelArray;

/// 初始化方法
+ (instancetype)viewModelWithEntity:(id)entity;

/// 使用于cell时计算得出高度【子类复写】
- (CGFloat)containerHeight;

/// 使用于header时计算得出高度【子类复写】
- (CGFloat)headerContainerHeight;

/// 获取cellId
- (NSString *)getCellIdentifier;

/// 获取headerId
- (NSString *)getHeaderIdentifier;

@end

NS_ASSUME_NONNULL_END
