//
//  TestCollectionViewCellTest.m
//  CollectionViewRotationTest
//
//  Created by Goston on 2016/4/3.
//  Copyright © 2016年 GostonWu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestCollectionViewCell.h"

@interface TestCollectionViewCellTest : XCTestCase

@end

@implementation TestCollectionViewCellTest
{
    TestCollectionViewCell *testCollectionViewCell;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    testCollectionViewCell = [[TestCollectionViewCell alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    for (NSInteger i = 0; i < 100; ++i)
    {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        [testCollectionViewCell setIndexPathLabel:indexPath];
    }
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
