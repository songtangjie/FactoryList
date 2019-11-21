//
//  BViewModel.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "BViewModel.h"
#import "BCollectionViewCell.h"
#import "BCollectionReusableView.h"

@implementation BViewModel

- (NSString *)getCellIdentifier
{
    return [BCollectionViewCell getCellIdentifier];
}

- (NSString *)getHeaderIdentifier
{
    return [BCollectionReusableView getHeaderIdentifier];
}

- (CGFloat)containerHeight
{
    return 100;
}

- (CGFloat)headerContainerHeight
{
    return 100;
}

@end
