//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Aaron Chen on 2020-03-28.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSInteger, PizzaSize) {
    small,
    medium,
    large
};


@interface Pizza : NSObject
- (instancetype)init:(PizzaSize) size:(NSArray *)toppings;
+ (PizzaSize)NsStringToPizzaSizeE:(NSString *)psize;

@property (atomic, assign) enum PizzaSize size;
@property (atomic,strong) NSArray *toppings;
@end

