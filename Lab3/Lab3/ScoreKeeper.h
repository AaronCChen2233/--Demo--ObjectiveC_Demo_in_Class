//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
- (NSString *)showResult;
@property (atomic, assign) NSInteger right;
@property (atomic, assign) NSInteger wrong;
@end

