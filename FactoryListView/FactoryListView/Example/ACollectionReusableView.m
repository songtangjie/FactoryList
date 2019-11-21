//
//  ACollectionReusableView.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "ACollectionReusableView.h"

@implementation ACollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
