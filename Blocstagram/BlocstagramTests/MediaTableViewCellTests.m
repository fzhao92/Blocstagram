//
//  MediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Forrest Zhao on 5/15/16.
//  Copyright © 2016 Bloc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"
#import "MediaTableViewCell.h"

@interface MediaTableViewCellTests : XCTestCase

@end

@implementation MediaTableViewCellTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatHeightForMediaItemWorks
{
    UITraitCollection *horizontalCompactTrait = [UITraitCollection traitCollectionWithHorizontalSizeClass:UIUserInterfaceSizeClassCompact];
    UITraitCollection *horizontalRegularTrait = [UITraitCollection traitCollectionWithHorizontalSizeClass:UIUserInterfaceSizeClassRegular];
    
    
    
    NSDictionary *sourceDictionary = @{@"id": @"87324902",
                                       @"user" : @{@"username": @"kevin",
                                                   @"full_name": @"Kevin S",
                                                   @"id": @"3",
                                                   @"profile_picture": @"..."},
                                       @"images": @{@"standard_resolution": @{@"url": @"http://www.example.com/example.jpg"}},
                                       @"caption": @{@"text": @"Example caption"},
                                       @"comments": @{@"data": @{}},
                                       @"user_has_liked": @YES};
    
    Media *testMedia1 = [[Media alloc]initWithDictionary:sourceDictionary];
    //Media *testMedia2 = [[Media alloc]initWithDictionary:<#(NSDictionary *)#>];
    //Media *testMedia3 = [[Media alloc]initWithDictionary:<#(NSDictionary *)#>];
    
    
    XCTAssertEqual([MediaTableViewCell heightForMediaItem:testMedia1 width:600.00 traitCollection:horizontalRegularTrait], 600.00);
}

@end
