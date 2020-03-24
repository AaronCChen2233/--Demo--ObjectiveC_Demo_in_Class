//
//  main.m
//  Lab2
//
//  Created by Aaron Chen on 2020-03-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

/**<> is form liblayr*/
/**"" is in the project*/
#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box = [[Box alloc] init:10 :6 : 10];
        Box *box2 = [[Box alloc] init:10 :6 : 1];
        NSLog(@"%.2f",box.volume);
        NSLog(@"%.2f",[box compare:box2]);
        
        
        //        DateCalculator *n = [DateCalculator new];
        //        DateCalculator *calc = [[DateCalculator alloc] init];
        //        [calc setMyAge: 27];
        //        NSLog(@"%.1f", calc.myAge);
    }
    return 0;
}
