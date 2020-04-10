//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-04-10.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface DeliveryService : NSObject<Delivery>
@property (atomic, strong) NSMutableArray* deliveryRecord;
@property (nonatomic, strong) id<Delivery> deliveryDelegate;
@end
