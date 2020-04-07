//
//  OldCook.m
//  Foodtruck
//
//  Created by Aaron Chen on 2020-04-06.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "OldCook.h"

@implementation OldCook
-(BOOL)shouldSayHello{
    return YES;
}

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    
    if ([food isEqualToString:@"Pizza"]){
        return 12;
    }else if ([food isEqualToString:@"one slice of Pizza"]){
        return 1;
    }else if ([food isEqualToString:@"french fire"]){
        return 4;
    }else if ([food isEqualToString:@"Hotdog"]){
        return 1.5;
    }
    
    return 0;
}
@end
