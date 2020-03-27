//
//  QuestionFactory.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-27.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion",
                                            @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion{
    NSInteger o = arc4random_uniform(4);
    
 
    
    NSString *className =  _questionSubclassNames[o];
    
    return [[NSClassFromString(className)alloc]init];
}
@end
