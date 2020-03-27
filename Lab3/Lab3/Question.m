//
//  Question.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91)+10;
        _rightValue = arc4random_uniform(91)+10;
        _startTime = [NSDate date];
    }
    return self;
}

/**overriding getter*/
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (void)generateRandomQuestion{
    
}

- (NSTimeInterval) answerTime{
    return [_endTime timeIntervalSinceDate: _startTime];
}
@end
