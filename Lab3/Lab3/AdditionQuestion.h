//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject
- (instancetype)init;
@property (atomic, assign) NSString* question;
@property (atomic, assign) NSInteger answer;
@end

