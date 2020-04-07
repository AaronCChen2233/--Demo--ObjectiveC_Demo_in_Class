//
//  Dice.m
//  Threelow
//
//  Created by Aaron Chen on 2020-04-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)roll{
    if (!_held){
        NSInteger p = arc4random_uniform(6)+1;
        _faceUpPoint = p;
        /**Threes are worth 0 points*/
        if (p == 3){
            _faceUpPoint = 0;
        }
    }
}

-(NSString *)GetPointIcon{
    NSString *i = @"";
    switch (_faceUpPoint) {
        case 1:
            i = @"⚀";
            break;
        case 2:
            i = @"⚁";
            break;
        case 0:
            i = @"⚂";
            break;
        case 4:
            i = @"⚃";
            break;
        case 5:
            i = @"⚄";
            break;
        case 6:
            i = @"⚅";
            break;
        default:
            break;
    }
    
    /**Add brackets if is held*/
    if(_held){
        i = [NSString stringWithFormat:@" [%@] ", i];
    }else{
        i = [NSString stringWithFormat:@"  %@  ", i];
    }
    
    return i;
}
@end
