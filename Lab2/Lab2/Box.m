//
//  Box.m
//  Lab2
//
//  Created by Aaron Chen on 2020-03-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)init:(float) height :(float) width :(float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float)volume{
    return _length*_width*_height;
}

- (float)compare:(Box*) anotherBox{
    return self.volume / anotherBox.volume;
}

@end
