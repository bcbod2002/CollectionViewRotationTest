//
//  TestCollectionViewCell.m
//  CollectionViewRotationTest
//
//  Created by Goston on 2015/10/4.
//  Copyright © 2015年 GostonWu. All rights reserved.
//

#import "TestCollectionViewCell.h"

@implementation TestCollectionViewCell
{
    UILabel *indexPathLabel;
}

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        //        <#statements#>
    }

    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self.contentView.layer setBorderWidth:1.f];
        [self.contentView.layer setBorderColor:[UIColor blueColor].CGColor];

        indexPathLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, (self.bounds.size.height - 22) / 2, 80, 22)];
        [indexPathLabel setTextAlignment:NSTextAlignmentNatural];
        [indexPathLabel setTextColor:[UIColor blackColor]];
        [indexPathLabel setText:@""];
        [self.contentView addSubview:indexPathLabel];
    }

    return self;
}

-(void)setIndexPathLabel:(NSIndexPath *)indexPath
{
    [indexPathLabel setText:[NSString stringWithFormat:@"%ld--%ld", (long)indexPath.section, (long)indexPath.row]];
}
@end
