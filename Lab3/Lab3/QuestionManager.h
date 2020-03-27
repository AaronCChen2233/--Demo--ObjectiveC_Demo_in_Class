//
//  QuestionManager.h
//  Lab3
//
//  Created by Aaron Chen on 2020-03-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface QuestionManager : NSObject
@property  (nonatomic, strong) NSMutableArray *questions;
- (NSString *) timeOutput;
@end

