//
//  SubtractionQuestion.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "SubtractionQuestion.h"
#import "Question.h"

@implementation SubtractionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateRandomQuestion];
        
    }
    return self;
}

- (void)generateRandomQuestion{
    self.question =  [NSString stringWithFormat: @"%ld - %ld ?", self.leftValue, self.rightValue];
    self.answer = self.leftValue-self.rightValue;
}
@end
