//
//  FBHomeBaseViewModel.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "BaseViewModel.h"
#import "BaseCollectionViewCell.h"
#import "BaseCollectionViewHeader.h"

@interface BaseViewModel()

@property (strong, readwrite, nonatomic) id entity;

@end

@implementation BaseViewModel

+ (instancetype)viewModelWithEntity:(id)entity
{
    return [[[self class] alloc] initWithEntity:entity];
}

- (instancetype)initWithEntity:(id)entity
{
    self = [super init];
    if (self) {
        self.entity = entity;
    }
    return self;
}

- (CGFloat)containerHeight
{
    return 12.f;
}

- (CGFloat)headerContainerHeight
{
    return 30.f;
}

- (NSString *)getCellIdentifier
{
    return [BaseCollectionViewCell getCellIdentifier];
}

- (NSString *)getHeaderIdentifier
{
    return [BaseCollectionViewHeader getHeaderIdentifier];
}

@end
