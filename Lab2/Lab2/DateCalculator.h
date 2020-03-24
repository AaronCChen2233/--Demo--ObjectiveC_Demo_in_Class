//
//  DateCalculator.h
//  Lab2
//
//  Created by Aaron Chen on 2020-03-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject
/***/
@property (atomic, assign) float myAge;
@property (atomic,strong) NSString *myName;
+ (void) sayHello;
- (BOOL) candatePersonWithAge:(float) age;
//- (float) myAge;
//- (void) setMyAge: (float) myAge;
@end
