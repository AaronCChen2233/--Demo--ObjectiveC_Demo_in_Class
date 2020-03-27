//
//  QuestionManager.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timeOutput{
    
    NSInteger total = 0;
    for (NSNumber *num in _questions) {
      total += [num intValue];
    }
    NSInteger avg = total/_questions.count;
    
    return [NSString stringWithFormat: @"total time: %ds, average time: %ds", total, avg] ;
}
@end
