//
//  ACollectionViewCell.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "ACollectionViewCell.h"

@interface ACollectionViewCell()

@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation ACollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        self.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *ges = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickContent)];
        [self addGestureRecognizer:ges];
        
        self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(15, 15, self.bounds.size.width, 30)];
        [self.contentView addSubview:self.nameLabel];
        
    }
    return self;
}

- (void)configure:(id)entity
{
    if (super.entity == entity) {
        return;
    }
    
    [super configure:entity];
    
    if ([entity isKindOfClass:[NSString class]]) {
        self.nameLabel.text = entity;
    }
}

- (void)clickContent
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(clickCellEvent:cell:params:)]) {
        
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        [params setObject:NSStringFromClass([self class]) forKey:DefaultParamKey];
        [self.delegate clickCellEvent:CellClickTypeFloorContent cell:self params:params];
    }
}


@end
