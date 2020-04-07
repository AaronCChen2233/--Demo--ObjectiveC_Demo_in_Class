//
//  Player.h
//  Threelow
//
//  Created by Aaron Chen on 2020-04-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject
- (instancetype)init:(NSString *) playerName;
@property (atomic, assign) NSInteger totalScore;
@property (atomic, copy) NSString *playerName;
@property (atomic, copy)NSMutableArray *dices;
-(void)Start;
@end

NS_ASSUME_NONNULL_END
