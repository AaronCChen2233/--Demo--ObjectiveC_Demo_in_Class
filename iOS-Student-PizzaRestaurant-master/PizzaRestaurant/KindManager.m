//
//  KindManager.m
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-04-09.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "KindManager.h"

@implementation KindManager
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    return true;
}
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return arc4random_uniform(2) == 0;;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    switch (arc4random_uniform(4)) {
        case 0:
            NSLog(@"%s","Here you are");
            break;
        case 1:
            NSLog(@"%s","Thank!");
            break;
        case 2:
            NSLog(@"%s","Have nice day");
            break;
        case 3:
            NSLog(@"%s","Here you are See you next time");
            break;
        default:
            NSLog(@"%s","Here you are");
            break;
    }
}
@end
