CollectionViewRotation is an example to make visible cell always visible while rotating interface orientation.

In this sample UICollectionView is build with 『Storyboard』 and UICollectionViewCell is on the 『Storyboard』 too. This sample UICollectionView scrolling is set by 『Scrolling Enabled』 and 『Paging Enable』. 

If you don't want to use 『Paging Enable』 you should override 
『-(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity』 with different implementation. This sample is made for 『Paging Enable』

UICollectionViewCell is use the custom class 『TestCollectionViewCell』, and the UICollectionViewFlowLayout is use the custom class 『TestFlowLayout』.

To make visible cell keep visible after rotation to landscape or portrait interface orientation. There are three functions in the Custom UICollectionViewFlowLayout must be override.

1. -(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity

2. -(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset

3. -(CGSize)collectionViewContentSize

In ViewController there is one function should be override. 
『-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration』
(But the function which override in this sample is deprecated. Maybe there are different ways could achieve this purpose.)

Call the function [XXXCollectionView.collectionViewLayout invalidateLayout]』 in 『willRotateToInterfaceOrientation』 make UICollectionView relocate there cells.
