//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryRecord = [NSMutableArray new];
        _deliveryDelegate = [DeliveryCar new];
    }
    return self;
}


-(void)deliverPizza:(Pizza *)pizza{
    [_deliveryRecord addObject:pizza];
    [_deliveryDelegate deliverPizza:pizza];
}

@end
