//
//  TestFlowLayoutTest.m
//  CollectionViewRotationTest
//
//  Created by Goston on 2016/4/3.
//  Copyright © 2016年 GostonWu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestFlowLayout.h"

@interface TestFlowLayoutTest : XCTestCase

@end

@implementation TestFlowLayoutTest
{
    TestFlowLayout *testFlowLayout;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    testFlowLayout = [[TestFlowLayout alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSInteger gotPage = [testFlowLayout page];
    printf("gotPage = %ld", (long)gotPage);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
