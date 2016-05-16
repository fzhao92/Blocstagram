//
//  MediaTests.m
//  Blocstagram
//
//  Created by Forrest Zhao on 5/14/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks
{
    NSDictionary *sourceDictionary = @{@"id": @"87324902",
                                       @"user" : @{@"username": @"kevin",
                                                   @"full_name": @"Kevin S",
                                                   @"id": @"3",
                                                   @"profile_picture": @"..."},
                                       @"images": @{@"standard_resolution": @{@"url": @"http://www.example.com/example.jpg"}},
                                       @"caption": @{@"text": @"Example caption"},
                                       @"comments": @{@"data": @{}},
                                       @"user_has_liked": @YES};
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The id should be equal");
    XCTAssertEqualObjects(testMedia.mediaURL, [NSURL URLWithString:sourceDictionary[@"images"][@"standard_resolution"][@"url"]], "The media url should be equal");
    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"][@"text"], "The caption text should be equal");
}

@end
