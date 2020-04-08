//
//  ApplePaymentService.m
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService
-(void) processPaymentAmount:(NSInteger) price{
    NSLog(@"Apple processed amount %ld",price);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(2) == 0;
}
@end
