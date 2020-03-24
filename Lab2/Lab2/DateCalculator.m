//
//  DateCalculator.m
//  Lab2
//
//  Created by Aaron Chen on 2020-03-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "DateCalculator.h"

@interface DateCalculator(){
    /**private instance variable _var*/
}
@end

@implementation DateCalculator
//{
//    /**private instance variable*/
//    /**start with "_" is private*/
//    float _myAge;
//}
/**class method use "+"*/

- (instancetype)init
{
    self = [super init];
    if (self) {
        _myAge = 27;
        _myName = @"Aaron";
    }
    return self;
}

//- (instancetype)initWithNameAndAge:(float) myAge
//{
//    self = [super init];
//    if (self) {
//
//    }
//    return self;
//}

+ (void) sayHello{
    NSLog(@"%@", @"Hello");
}

- (BOOL) candatePersonWithAge:(float) age {
    return _myAge / 2 + 7 > age;
}

/**getter use "-"*/
//- (float) myAge {
//    return _myAge;
//}

/**setter also use "-" */
//- (void) setMyAge: (float) myAge{
//    _myAge = myAge;
//}

@end
