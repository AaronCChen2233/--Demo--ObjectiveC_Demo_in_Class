//
//  Box.h
//  Lab2
//
//  Created by Aaron Chen on 2020-03-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (atomic, assign) float height;
@property (atomic, assign) float width;
@property (atomic, assign) float length;
- (instancetype)init:(float) height :(float) width :(float) length;
- (float)volume;
- (float)compare:(Box*) anotherBox;
@end
