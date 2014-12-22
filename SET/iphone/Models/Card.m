//
//  Card.m
//  SET
//
//  Created by ifund IT WH on 5/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (instancetype)initWithColor:(color) color andShape:(shape) shape andQuantity:(quantity) quantity andFiller:(filler) filler{
    self = [super init];
    _elementColor=color;
    _elementShape=shape;
    _elementQuantity=quantity;
    _elementFiller=filler;
    return self;
}

- (color)elementColor{
    return _elementColor;
}

- (shape)elementShape{
    return _elementShape;
}

- (quantity)elementQuantity{
    return _elementQuantity;
}

- (filler)elementFiller{
    return _elementFiller;
}

@end