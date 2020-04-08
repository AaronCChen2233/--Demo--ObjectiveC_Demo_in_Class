//
//  StripePaymentService.h
//  Payments
//
//  Created by Aaron Chen on 2020-04-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject<PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
