//
//  Dice.h
//  Threelow
//
//  Created by Aaron Chen on 2020-04-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property (atomic, assign) BOOL held;
@property (atomic, assign) NSInteger faceUpPoint;
-(void)roll;
-(NSString *)GetPointIcon;
@end

NS_ASSUME_NONNULL_END
