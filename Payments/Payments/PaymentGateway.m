//
//  PaymentGateway.m
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void) processPaymentAmount:(NSInteger) price{
    if([_PaymentDelegate canProcessPayment]){
         [_PaymentDelegate processPaymentAmount:price];
    }else{
        NSLog(@"%@",@"Sorry this payment service can't process");
    }
   
}
@end
