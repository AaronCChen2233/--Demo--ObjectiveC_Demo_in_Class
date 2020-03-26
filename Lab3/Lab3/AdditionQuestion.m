//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger n1 = arc4random_uniform(91)+10;
        NSInteger n2 = arc4random_uniform(91)+10;
        NSInteger o = arc4random_uniform(4);
        switch (o) {
            case 0:
                _question = [NSString stringWithFormat: @"%ld + %ld ?", n1, n2];
                _answer = n1 + n2;
                break;
            case 1:
                _question = [NSString stringWithFormat: @"%ld - %ld ?", n1, n2];
                _answer = n1 - n2;
                break;
            case 2:
                _question = [NSString stringWithFormat: @"%ld * %ld ?", n1, n2];
                _answer = n1 * n2;
                break;
            case 3:
                _question = [NSString stringWithFormat: @"%ld / %ld ?", n1, n2];
                _answer = n1 / n2;
                break;
            default:
                break;
        }
    }
    return self;
}

- (void)generateRandomQuestion{
    
}

@end
