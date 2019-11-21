//
//  ViewController.m
//  FactoryListView
//
//  Created by william on 2019/11/21.
//  Copyright © 2019 william. All rights reserved.
//

#import "ViewController.h"
#import "ACollectionViewCell.h"
#import "BCollectionViewCell.h"
#import "AViewModel.h"
#import "BViewModel.h"
#import "ACollectionReusableView.h"
#import "BCollectionReusableView.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,CollectionViewCellClickDelegate,CollectionViewHeaderClickDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.collectionView registerClass:[BaseCollectionViewCell class] forCellWithReuseIdentifier:[BaseCollectionViewCell getCellIdentifier]];
    [self.collectionView registerClass:[ACollectionViewCell class] forCellWithReuseIdentifier:[ACollectionViewCell getCellIdentifier]];
    [self.collectionView registerClass:[BCollectionViewCell class] forCellWithReuseIdentifier:[BCollectionViewCell getCellIdentifier]];

    [self.collectionView registerClass:[BaseCollectionViewHeader class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[BaseCollectionViewHeader getHeaderIdentifier]];
    [self.collectionView registerClass:[BCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[BCollectionReusableView getHeaderIdentifier]];
    [self.collectionView registerClass:[ACollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[ACollectionReusableView getHeaderIdentifier]];
    [self.collectionView registerClass:[BCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[BCollectionReusableView getHeaderIdentifier]];
    
    AViewModel *vmA = [AViewModel viewModelWithEntity:@"A"];
    BViewModel *vmB = [BViewModel viewModelWithEntity:@"B"];
    self.data = @[@[vmA,vmA],@[vmB,vmB]];
    
    [self.collectionView reloadData];
}

#pragma mark - UICollectionViewDelegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.data.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSArray *array = [self.data objectAtIndex:section];
    if (array && array.count > 0) {
        return array.count;
    }
    return 0;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    NSArray *array = [self.data objectAtIndex:section];
    if (array && array.count > 0) {
        BaseViewModel *vm = [array firstObject];
        return CGSizeMake([UIScreen mainScreen].bounds.size.width, [vm headerContainerHeight]);
    }
    return CGSizeZero;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        NSArray *array = [self.data objectAtIndex:indexPath.section];
        if (array && array.count > 0) {
            BaseViewModel *vm = [array objectAtIndex:indexPath.row];
            BaseCollectionViewHeader *header = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:[vm getHeaderIdentifier] forIndexPath:indexPath];
            if (!header.delegate) {
                header.delegate = self;
            }
            [header setHeaderModel:vm.entity];
            return header;
        }
    }
    
    return [[UICollectionReusableView alloc]init];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *array = [self.data objectAtIndex:indexPath.section];
    if (array && array.count > 0) {
        BaseViewModel *vm = [array objectAtIndex:indexPath.row];
        return CGSizeMake([UIScreen mainScreen].bounds.size.width, [vm containerHeight]);
    }
    return CGSizeZero;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *array = [self.data objectAtIndex:indexPath.section];
    if (array && array.count > 0) {
        BaseViewModel *vm = [array objectAtIndex:indexPath.row];
        BaseCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[vm getCellIdentifier] forIndexPath:indexPath];
        [cell configure:vm.entity];
        cell.delegate = self;
        return cell;
    }
    return [[UICollectionViewCell alloc]init];
}

#pragma mark - CollectionViewCellClickDelegate
- (void)clickCellEvent:(CellClickType)clickType cell:(BaseCollectionViewCell *)cell params:(NSMutableDictionary *)params
{
    switch (clickType) {
        case CellClickTypeFloorContent:
        {
            if ([params objectForKey:DefaultParamKey] && [[params objectForKey:DefaultParamKey] isKindOfClass:[NSString class]]) {
                NSString *text = [params objectForKey:DefaultParamKey];
                NSLog(@"点击了%@",text);
            }
        }
            break;
        case CellClickTypeJumpToVC:
            NSLog(@"跳转vc");
                break;
        default:
            break;
    }
}

#pragma mark - CollectionViewHeaderClickDelegate

- (void)clickHeaderEvent:(HeaderClickType)clickType params:(NSMutableDictionary *)params
{
    switch (clickType) {
        case HeaderClickTypeContent:
        {
            NSLog(@"点击了header");
        }
            break;
        case HeaderClickTypeMore:
            NSLog(@"点击更多");
                break;
        default:
            break;
    }
}

@end
