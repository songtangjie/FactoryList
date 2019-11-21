//
//  AViewModel.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "AViewModel.h"
#import "ACollectionViewCell.h"
#import "ACollectionReusableView.h"

@implementation AViewModel

- (NSString *)getCellIdentifier
{
    return [ACollectionViewCell getCellIdentifier];
}

- (NSString *)getHeaderIdentifier
{
    return [ACollectionReusableView getHeaderIdentifier];
}

- (CGFloat)containerHeight
{
    return 50;
}

- (CGFloat)headerContainerHeight
{
    return 50;
}

@end
