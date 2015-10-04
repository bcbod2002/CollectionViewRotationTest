//
//  TestFlowLayout.m
//  CollectionViewRotationTest
//
//  Created by Goston on 2015/10/4.
//  Copyright © 2015年 GostonWu. All rights reserved.
//

#import "TestFlowLayout.h"

@implementation TestFlowLayout

//-(instancetype)init
//{
//    self = [super init];
//    if (self)
//    {
////        <#statements#>
//    }
//
//    return self;
//}

-(void)prepareLayout
{
    self.itemSize = CGSizeMake(self.collectionView.frame.size.width / 2, self.collectionView.frame.size.height / 2);
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.sectionInset = UIEdgeInsetsZero;
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
}

-(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity
{
    NSInteger page = ceil(proposedContentOffset.x / self.collectionView.frame.size.width);
    _page = page;

    return [super targetContentOffsetForProposedContentOffset:proposedContentOffset withScrollingVelocity:velocity];
}

-(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset
{
    return CGPointMake(_page * self.collectionView.frame.size.width, 0);
}

-(CGSize)collectionViewContentSize
{
    self.itemSize = CGSizeMake(self.collectionView.frame.size.width / 2, self.collectionView.frame.size.height / 2);
    NSInteger numberItemsOfSection = [self.collectionView numberOfItemsInSection:0] / 4;
    NSUInteger modulus = [self.collectionView numberOfItemsInSection:0] % 4;
    modulus = modulus > 0 ? 1 : 0;
    return CGSizeMake(self.collectionView.frame.size.width * (numberItemsOfSection + modulus), self.collectionView.frame.size.height);
}

@end
