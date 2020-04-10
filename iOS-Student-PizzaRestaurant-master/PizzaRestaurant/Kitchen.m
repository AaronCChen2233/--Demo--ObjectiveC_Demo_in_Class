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
    if([_kitchenDelegate kitchenShouldUpgradeOrder:self]){
        size = [Pizza NsStringToPizzaSizeE:@"large"];
    }
    
    if(![_kitchenDelegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        return nil;
    }
    
    Pizza *pizza =[[Pizza alloc]init:size:toppings];
    [_kitchenDelegate kitchenDidMakePizza:pizza];
    
    return pizza;
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
