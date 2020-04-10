//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-04-09.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "DeliveryService.h"

@implementation Manager
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    for (NSObject *t in toppings){
        NSString *tstr = [NSString stringWithFormat:@"%@", t];
        if ([tstr isEqualToString:@"anchovies"]){
            return false;
        }
    }
    return true;
}
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return false;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
   [_deliveryDelegate deliverPizza:pizza];
}
@end
