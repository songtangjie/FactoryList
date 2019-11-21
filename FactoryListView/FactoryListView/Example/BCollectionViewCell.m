//
//  BCollectionViewCell.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "BCollectionViewCell.h"

@interface BCollectionViewCell()

@property (nonatomic, strong) UILabel *nameLabel;

@end

@implementation BCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
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
        [params setObject:@(2) forKey:DefaultParamKey];
        [self.delegate clickCellEvent:CellClickTypeJumpToVC cell:self params:params];
    }
}

@end
