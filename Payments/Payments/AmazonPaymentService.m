//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPaymentAmount:(NSInteger) price{
    NSLog(@"Amazon processed amount %ld",price);
}

-(BOOL)canProcessPayment{
    return arc4random_uniform(2) == 0;
}
@end
