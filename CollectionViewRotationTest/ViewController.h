//
//  ViewController.h
//  CollectionViewRotationTest
//
//  Created by Goston on 2015/10/4.
//  Copyright © 2015年 GostonWu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestCollectionViewCell.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) IBOutlet UICollectionView *testCollectionView;

@end

