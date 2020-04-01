//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    return [[Pizza alloc]init:size:toppings];
}

- (Pizza *)largePepperoni:(PizzaSize)size
{
    NSArray *toppings = @[@"tomato", @"pepperoni", @"cheese"];
    return [[Pizza alloc]init:size:toppings];
}

- (Pizza *)meatLoversWithSize:(PizzaSize)size
{
    NSArray *toppings = @[@"meat", @"cheese"];
    return [[Pizza alloc]init:size:toppings];
}

- (Pizza *)noCheeseWithSize:(PizzaSize)size
{
    NSArray *toppings = @[@"meat", @"tomato"];
    return [[Pizza alloc]init:size:toppings];
}

@end
