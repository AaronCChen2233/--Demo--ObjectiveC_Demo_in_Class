//
//  NSString+pigLatin.m
//  Lab13
//
//  Created by Aaron Chen on 2020-04-02.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "NSString+pigLatin.h"

@implementation NSString (pigLatin)

-(NSString *)stringByPigLatinization{
    NSString *vowels = @"aeiouAEIOU";
    NSMutableArray *words = [self componentsSeparatedByString:@" "];
    NSString *pigLatined = @"";
    for (int w = 0; w<words.count;w++){
        Boolean foundvowel = false;
        NSString *word = words[w];

        for (int i = 0;i<word.length;i++){
            for(int j =0;j<vowels.length;j++){
                if ([word characterAtIndex:i] == [vowels characterAtIndex:j]){
                    foundvowel = true;
                    
                    pigLatined = [pigLatined stringByAppendingString:[word substringFromIndex:i]];
                    pigLatined = [pigLatined stringByAppendingString:[word substringToIndex:i]];
                    if(i == 0){
                        pigLatined = [pigLatined stringByAppendingString:@"way"];
                    }else{
                        pigLatined = [pigLatined stringByAppendingString:@"ay"];
                    }
                    pigLatined = [pigLatined stringByAppendingString:@" "];
                    break;
                }
            }
            if (foundvowel){
                break;
            }
        }
    }

    return  [pigLatined stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *) addWaterMark{
    return [@"CICCC " stringByAppendingString:self];
}
@end
