//
//  Question.h
//  Lab3
//
//  Created by Aaron Chen on 2020-03-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject
@property (atomic, copy) NSString* question;
@property (atomic, assign) NSInteger answer;
@property (atomic, assign) NSDate* startTime;
@property (atomic, assign) NSDate* endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
- (NSTimeInterval) answerTime;
- (void) generateRandomQuestion;
@end

