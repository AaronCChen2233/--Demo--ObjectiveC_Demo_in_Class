//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
-(void) processPaymentAmount:(NSInteger) price{
    NSLog(@"Paypal processed amount %ld",price);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(2) == 0;
}
@end
