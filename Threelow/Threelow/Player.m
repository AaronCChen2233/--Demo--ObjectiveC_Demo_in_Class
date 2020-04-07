//
//  Player.m
//  Threelow
//
//  Created by Aaron Chen on 2020-04-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "Player.h"
#import "InputHandler.h"
#import "Dice.h"

@implementation Player

- (instancetype)init:(NSString *) playerName
{
    self = [super init];
    if (self) {
        _playerName = playerName;
        _dices = [NSMutableArray new];
    }
    return self;
}


- (void)holdAll {
    for (Dice *d in _dices){
        d.held = true;
    }
}

-(void)Start{
    NSInteger left = 4;
    
    for (int i = 0;i<5;i++){
        Dice *d = [Dice new];
        [d roll];
        [_dices addObject:d];
    }
    [self CluTotalScore];
    BOOL isShow = false;
    while (left > 0) {
        
        if(!isShow){
            [self showInfo:left];
        }else{
            isShow = false;
        }
        
        NSString *input =[InputHandler getUserInput:10 : @"---------------------------------------------"];
        if([input isEqualToString: @"roll"]){
            [self rollAllDice];
            left = left - 1;
        }else if ([input isEqualToString: @"hold"]){
            [self hold];
        }else if ([input isEqualToString: @"reset"]){
            [self reset];
        }else if ([input isEqualToString: @"show"]){
            NSLog(@"%@", [NSString stringWithFormat:@"%@%ld", @"Score: ", _totalScore ]);
            isShow = true;
        }else if ([input isEqualToString: @"done"]){
            [self holdAll];
            left = 0;
        }else if ([input isEqualToString: @"display"]){
            
        }else{
            NSLog(@"%@", @"Unknow action please input again");
        }
    }
    
    [self holdAll];
    [self showInfo:left];
}

- (void)reset {
    for (Dice *d in _dices){
        d.held = false;
    }
}

- (void)showInfo:(NSInteger)left {
    NSLog(@"%@",@"");
    NSLog(@"%@", [NSString stringWithFormat:@"%@%@", @"Now is ", _playerName ]);
    NSLog(@"%@", [NSString stringWithFormat:@"%@%ld", @"Remaining Rolls: ", left ]);
    NSLog(@"%@", @"---------------------------------------------");
    
    NSLog(@"%@", @"------------    Current Dice    -------------");
    NSLog(@"%@", [self GetDicesNSString]);
    NSLog(@"%@", @"------------    Total Score     -------------");
    NSLog(@"%@", [NSString stringWithFormat:@"%@%ld", @"Score: ", _totalScore ]);
    NSLog(@"%@", @"---------------------------------------------");
    
    NSLog(@"%@", @"'roll' to roll the dice");
    NSLog(@"%@", @"'hold' to hold a dice");
    NSLog(@"%@", @"'reset' to un-hold all dice");
    NSLog(@"%@", @"'show' to see cukrrent dice");
    NSLog(@"%@", @"'done' to end the game");
    NSLog(@"%@", @"'display' to show current stats ");
}


-(NSString *) GetDicesNSString{
    NSString *diceStr = @"";
    for (Dice *d in _dices){
        diceStr = [diceStr stringByAppendingString: d.GetPointIcon];
    }
    return diceStr;
}

-(void) rollAllDice{
    for (Dice *d in _dices){
        [d roll];
    }
    [self CluTotalScore];
}

-(void) CluTotalScore{
    NSInteger ts = 0;
    for (Dice *d in _dices){
        ts = ts + d.faceUpPoint;
    }
    _totalScore = ts;
}

- (void)hold {
    NSInteger hiInt = 0;
    while (hiInt == 0) {
        NSString *hi =[InputHandler getUserInput:2 : @"Please input hold index(1~5)"];
        
        hiInt = [hi intValue];
        
        if(hiInt>5 || hiInt<=0){
            NSLog(@"%@", @"Please input a numeber between 1 and 5");
            hiInt = 0;
        }
        
    }
    Dice *d = _dices[hiInt-1];
    d.held = true;
}
@end
