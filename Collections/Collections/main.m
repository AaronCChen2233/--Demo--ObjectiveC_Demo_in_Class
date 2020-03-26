//
//  main.m
//  Collections
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**NSArray is immutable(cannot change)*/
        NSArray *names = @[@"Aaron",@"wallii",@"allen"];
        //        NSLog(@"%@",names);
        
        /**NsMutableArray is mutable (append, remove, insert, replace)*/
        NSMutableArray *cities = [NSMutableArray new];
        [cities addObject:@"Vancouver"];
        [cities addObject:@"Toronoto"];
        [cities addObject:@"Burnaby"];
        [cities insertObject:@"Edmoton" atIndex:1];
        [cities removeLastObject];
        //        NSLog(@"%@",cities);
        
        NSMutableArray *randomNums = [NSMutableArray new];
        for (int i = 0;i<10;i++){
            [randomNums addObject: [[NSNumber alloc] initWithUnsignedInt:arc4random_uniform(100)]];
        }
        NSLog(@"%@", randomNums);
        
        NSArray *sorted = [randomNums sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
            return [obj1 compare:obj2];
        }];
        
        NSLog(@"%@", sorted);
        
        /**Dictionaries - key-value pairs*/
        NSDictionary *airports = @{@"YVR": @"Vancouver", @"TPE":@"Taipei",@"jfk":@"New York City",@"gru":@"Sao Paulo"};
//        NSLog(@"%@", [airports objectForKey:@"YVR"]);
        for (NSString *code in airports){
             NSLog(@"%@ : %@",code, [airports objectForKey:code]);
        }
        
    }
    return 0;
}
