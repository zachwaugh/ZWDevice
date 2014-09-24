//
//  ZWDevice.m
//
//  Copyright (c) 2014 Zach Waugh (http://zachwaugh.me)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import "ZWDevice.h"
#import <sys/utsname.h>
#import <UIKit/UIDevice.h>

@implementation ZWDevice

+ (NSString *)hardwareModel
{
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

+ (NSString *)model
{
    static NSDictionary *_models = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _models = @{
                    @"iPhone1,1": @"iPhone",
                    @"iPhone1,2": @"iPhone 3G",
                    @"iPhone2,1": @"iPhone 3GS",
                    @"iPhone3,1": @"iPhone 4",
                    @"iPhone3,3": @"iPhone 4",
                    @"iPhone4,1": @"iPhone 4S",
                    @"iPhone5,1": @"iPhone 5",
                    @"iPhone5,2": @"iPhone 5",
                    @"iPhone5,3": @"iPhone 5c",
                    @"iPhone5,4": @"iPhone 5c",
                    @"iPhone6,1": @"iPhone 5s",
                    @"iPhone6,2": @"iPhone 5s",
                    @"iPhone7,1": @"iPhone 6 Plus",
                    @"iPhone7,2": @"iPhone 6",
                    @"iPad1,1": @"iPad",
                    @"iPad2,1": @"iPad 2",
                    @"iPad2,2": @"iPad 2",
                    @"iPad2,3": @"iPad 2",
                    @"iPad2,4": @"iPad 2",
                    @"iPad2,5": @"iPad mini",
                    @"iPad2,6": @"iPad mini",
                    @"iPad2,7": @"iPad mini",
                    @"iPad3,1": @"iPad (3rd gen)",
                    @"iPad3,2": @"iPad (3rd gen)",
                    @"iPad3,3": @"iPad (3rd gen)",
                    @"iPad3,4": @"iPad (4th gen)",
                    @"iPad3,5": @"iPad (4th gen)",
                    @"iPad3,6": @"iPad (4th gen)",
                    @"iPad4,1": @"iPad Air",
                    @"iPad4,2": @"iPad Air",
                    @"iPad4,4": @"iPad mini (2nd gen)",
                    @"iPad4,5": @"iPad mini (2nd gen)",
                    @"iPod1,1": @"iPod touch",
                    @"iPod2,1": @"iPod touch (2nd gen)",
                    @"iPod3,1": @"iPod touch (3rd gen)",
                    @"iPod4,1": @"iPod touch (4th gen)",
                    @"iPod5,1": @"iPod touch (5th gen)"
                    };
    });
    
    NSString *hardwareModel = [self hardwareModel];
    return _models[hardwareModel] ?: UIDevice.currentDevice.model;
}

@end
