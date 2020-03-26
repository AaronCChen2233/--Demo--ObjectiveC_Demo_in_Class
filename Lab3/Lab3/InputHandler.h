//
//  InputHandler.h
//  Lab3
//
//  Created by Aaron Chen on 2020-03-25.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
    NSString *getUserInput(int maxLength, NSString *prompt);
+ (NSString *)getUserInput:(int) maxLength: (NSString *) prompt;
@end
