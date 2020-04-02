//
//  main.m
//  Lab13
//
//  Created by Aaron Chen on 2020-04-01.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+pigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog([@"Hello World" stringByPigLatinization]);
        NSLog([@"smile" stringByPigLatinization]);
        NSLog([@"eat" stringByPigLatinization]);
        NSLog([@"latin" stringByPigLatinization]);
        NSLog([@"egg" stringByPigLatinization]);
    }
    return 0;
}
