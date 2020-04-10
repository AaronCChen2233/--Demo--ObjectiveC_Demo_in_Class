//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "KindManager.h"
#import "DeliveryService.h"
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *ds = [DeliveryService new];
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSMutableArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            
            PizzaSize ps = [Pizza NsStringToPizzaSizeE:commandWords[0]];

            [commandWords removeObjectAtIndex:0];
            
            /**Only a quarter of the chance you will meet a kind manager*/
            if(arc4random_uniform(4)==0){
                KindManager *km = [KindManager new];
                km.deliveryDelegate = ds;
                restaurantKitchen.kitchenDelegate = km;
            }else{
                Manager *m = [Manager new];
                 m.deliveryDelegate = ds;
                restaurantKitchen.kitchenDelegate = m;
            }
            
            Pizza *p = [restaurantKitchen makePizzaWithSize:ps toppings:commandWords];
        }
    }
    return 0;
}

