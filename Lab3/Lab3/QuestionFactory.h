//
//  QuestionFactory.h
//  Lab3
//
//  Created by Aaron Chen on 2020-03-27.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject
@property (nonatomic, retain) NSArray *questionSubclassNames;
- (Question *) generateRandomQuestion;
@end

