//
//  main.m
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger price = arc4random_uniform(900)+100;
        NSString *message = [NSString stringWithFormat: @"Thank you for shopping at Acme.com Your total today is %ld Please select \n your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4:Apple", price];
        
        NSString *userinput =[InputHandler getUserInput:2 : message];
        NSInteger paymentMethod = [userinput intValue];
        PaymentGateway *pg = [PaymentGateway new];
        
        switch (paymentMethod) {
            case 1:
                pg.PaymentDelegate = [PaypalPaymentService new];
                break;
            case 2:
                pg.PaymentDelegate = [StripePaymentService new];
                break;
            case 3:
                pg.PaymentDelegate = [AmazonPaymentService new];
                break;
            case 4:
                pg.PaymentDelegate = [ApplePaymentService new];
                break;
            default:
                pg.PaymentDelegate = [PaypalPaymentService new];
                break;
        }
        
        [pg processPaymentAmount:price];
    }
    return 0;
}
