//
//  main.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ScoreKeeper *sk = [ScoreKeeper new];
        QuestionManager *qm = [QuestionManager new];
        QuestionFactory *qf = [QuestionFactory new];
        NSLog(@"MATHS!!");
        
        while (true){
            AdditionQuestion *q = qf.generateRandomQuestion;
            NSString *pc =[InputHandler getUserInput:10 : q.question];
            
            if([pc isEqualToString:@"quit"]){
                break;
            }
            
            NSInteger *pa = [pc intValue];
            
            if (pa == q.answer){
                NSLog(@"Right!");
                sk.right = sk.right + 1;
            }else{
                NSLog(@"Wrong!");
                sk.wrong = sk.wrong + 1;
            }
            
            [qm.questions addObject:[NSNumber numberWithDouble:q.answerTime]];
            
            NSLog(sk.showResult);
            NSLog(qm.timeOutput);
        }
    }
    return 0;
}
