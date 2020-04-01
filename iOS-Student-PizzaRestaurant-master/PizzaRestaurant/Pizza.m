//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-03-28.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)init:(PizzaSize) size:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

+ (PizzaSize)NsStringToPizzaSizeE:(NSString *)psize{
    PizzaSize ps = small;
    
    if([psize isEqualToString: @"small"]){
        ps = small;
    }
    
    if([psize isEqualToString: @"medium"]){
        ps = medium;
    }
    
    if([psize isEqualToString: @"large"]){
        ps = large;
    }
    
    return ps;
}

@end
