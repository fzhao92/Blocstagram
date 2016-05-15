//
//  ComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Forrest Zhao on 5/14/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTests : XCTestCase

@end

@implementation ComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSetText
{
    NSString *testText = @"tester text";
    
    ComposeCommentView *testTextExists = [[ComposeCommentView alloc]init];
    ComposeCommentView *testTextDoesNotExist = [[ComposeCommentView alloc]init];
    
    [testTextExists setText: testText];
    XCTAssertTrue(testTextExists.isWritingComment);
    
    [testTextDoesNotExist setText:NULL];
    XCTAssertFalse(testTextDoesNotExist.isWritingComment);
}

@end
