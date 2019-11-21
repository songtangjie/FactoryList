//
//  BCollectionReusableView.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "BCollectionReusableView.h"

@implementation BCollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

@end
