//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "OldCook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
        
        Cook *cook1 = [Cook new];
        OldCook *oldCook = [OldCook new];
        
        truckA.delegate = cook1;
        
        NSLog(@"%d",[truckA.delegate shouldSayHello]);
        NSLog(@"%f", [truckA.delegate foodTruck:truckA priceForFood:@""]);
        
        truckB.delegate = oldCook;
        
        NSLog(@"%d",[truckB.delegate shouldSayHello]);
        NSLog(@"%f", [truckB.delegate foodTruck:truckA priceForFood:@"Hotdog"]);
    }
    return 0;
}
