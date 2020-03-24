//
//  main.m
//  Lab1
//
//  Created by Aaron Chen on 2020-03-23.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt){
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true){
            NSString *StrInput = getUserInput(255, @"\nEnter your String: ('q' to quit)");
            if ([StrInput isEqualToString:@"q"]){
                break;
            }
            while (true) {
                NSString *option = getUserInput(10, @"\nChoose one of the following option:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Spece-It\n7. Word Count\n8. Remove punctuations\n9. Done");
                
                if ([option isEqualToString:@"9"]){
                    break;
                }else if ([option isEqualToString:@"1"]){
                    NSLog(@"%@",[StrInput uppercaseString]);
                }else if ([option isEqualToString:@"2"]){
                    NSLog(@"%@", [StrInput lowercaseString]);
                }else if ([option isEqualToString:@"3"]){
                    /**check if strInput is number?*/
                    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                    NSNumber *number = [formatter numberFromString:  StrInput];
                    if (number != NULL){
                        NSLog(@"%ld",[number integerValue]);
                    }else{
                        NSLog(@"%@", @"Input cannot be converted to integer");
                    }
                }else if ([option isEqualToString:@"4"]){
                    NSLog(@"%@",[StrInput stringByAppendingString:@", eh?"]);
                }else if ([option isEqualToString:@"5"]){
                    if ([StrInput characterAtIndex: [StrInput length] -1 ]== '?'){
                        NSLog(@"%@",@"I don't know");
                    }else if ([StrInput characterAtIndex: [StrInput length] -1 ]== '!'){
                        NSLog(@"%@", @"Whoa, calm down!");
                    }else{
                        NSLog(@"%@", @"I can hear you, but I don't understand");
                    }
                }else if ([option isEqualToString:@"6"]){
                    NSLog(@"%@",[StrInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                }else if ([option isEqualToString:@"7"]){
                    NSLog(@"%lu", [StrInput length]);
//                    NSArray *wordArr = [StrInput componentsSeparatedByString:@" "];
//                    NSArray *filtered = [wordArr filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"NOT (SELF CONTAINS[c] %@)",@""]];
                    NSLog(@"%lu", ([StrInput componentsSeparatedByString:@" "].count + 1));
                }else if ([option isEqualToString:@"8"]){
                    NSString* removed = [[StrInput componentsSeparatedByCharactersInSet:[[NSCharacterSet letterCharacterSet] invertedSet]] componentsJoinedByString:@""];
                    NSLog(@"%@", removed);
                }
            }
        }
    }
    return 0;
}
