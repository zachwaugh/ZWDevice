//
//  ZWDeviceTests.m
//  ZWDeviceTests
//
//  Created by Zach Waugh on 11/10/15.
//  Copyright © 2015 Zach Waugh. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ZWDevice.h"

@interface ZWDeviceTests : XCTestCase
@end

@implementation ZWDeviceTests

- (void)testModel {
    // On simulator, it will equal the UIDevice model
    XCTAssertEqualObjects(ZWDevice.model, [UIDevice currentDevice].model);
}

- (void)testModelForIdentifier {
    XCTAssertEqualObjects([ZWDevice modelForIdentifier:@"iPhone7,2"], @"iPhone 6");
    XCTAssertEqualObjects([ZWDevice modelForIdentifier:@"iPad4,2"], @"iPad Air");
}

@end
