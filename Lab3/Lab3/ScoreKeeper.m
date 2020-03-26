//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (NSString *)showResult{
    return [NSString stringWithFormat: @"score: %d right, %d wrong ---- %d%%", _right, _wrong, _right*100/(_right+_wrong)];
}
@end
