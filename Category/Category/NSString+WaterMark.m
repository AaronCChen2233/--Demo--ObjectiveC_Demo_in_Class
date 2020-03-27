//
//  NSString+WaterMark.m
//  Category
//
//  Created by Aaron Chen on 2020-03-27.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "NSString+WaterMark.h"

@implementation NSString (WaterMark)

- (NSString *) addWaterMark{
    return [@"CICCC " stringByAppendingString:self];
}

@end
