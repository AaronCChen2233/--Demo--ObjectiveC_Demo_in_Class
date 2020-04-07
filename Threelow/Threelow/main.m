//
//  main.m
//  Threelow
//
//  Created by Aaron Chen on 2020-04-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**Ask how many players?*/
        NSInteger playerCount = 0;
        while (playerCount <= 0) {
            NSString *pc =[InputHandler getUserInput:10 : @"Please input how many players(At most 4)"];
            playerCount = [pc intValue];
            if(playerCount >4){
                NSLog(@"%@",@"players count at most 4");
                playerCount = 0;
            }
        }
        /**for test now*/
//        playerCount = 1;
        
        NSMutableArray *players = [NSMutableArray new];
        for(int i = 0;i < playerCount;i++){
            Player *p = [[Player alloc]init:[NSString stringWithFormat: @"%@%ld",@"Player", (long)(i+1)]];

            [players addObject:p];
        }
        
        NSInteger pn = 1;
        for(Player *p in players){
            [p Start];
        }
        
        Player *winner = players[0];
        for(int i = 1 ;i<players.count;i++){
            Player *c = players[i];
            if (winner.totalScore>c.totalScore){
                winner = c;
            }
        }
        NSLog(@"Winner is %@", winner.playerName);
        
    }
    return 0;
}
