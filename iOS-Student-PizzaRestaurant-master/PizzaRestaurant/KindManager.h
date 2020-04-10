//
//  KindManager.h
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-04-09.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface KindManager : NSObject<KitchenDelegate>
@property (nonatomic, strong) id<Delivery> deliveryDelegate;
@end
