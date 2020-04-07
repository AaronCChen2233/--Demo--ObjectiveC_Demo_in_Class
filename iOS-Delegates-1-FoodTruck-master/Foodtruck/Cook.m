//
//  Cook.m
//  Foodtruck
//
//  Created by Aaron Chen on 2020-04-06.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook
-(BOOL)shouldSayHello{
    return YES;
}

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    return 200;
}
@end
