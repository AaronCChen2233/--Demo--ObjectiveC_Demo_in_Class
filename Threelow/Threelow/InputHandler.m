//
//  InputHandler.m
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput:(int) maxLength: (NSString *) prompt{
    if (maxLength < 1){
        maxLength = 255;
    }
    NSLog(@"%@",prompt);
    char inputChar[maxLength];
    char *result = fgets(inputChar, maxLength, stdin);
    if (result != NULL){
        /**turn cstring -> NSString*/
        return [[NSString stringWithUTF8String:inputChar]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end
