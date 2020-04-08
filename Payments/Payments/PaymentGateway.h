//
//  PaymentGateway.h
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>
-(void) processPaymentAmount:(NSInteger) price;
-(BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject
-(void) processPaymentAmount:(NSInteger) price;
@property (nonatomic, strong) id<PaymentDelegate> PaymentDelegate;
@end

NS_ASSUME_NONNULL_END
