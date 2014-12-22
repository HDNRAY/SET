//
//  Header.h
//  SET
//
//  Created by ifund IT WH on 5/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Constants.h"

typedef enum Colors {red,green,perple} color;
typedef enum Shapes {rectangle,eclipse,wave} shape;
typedef enum Fillers {full,empty,lines} filler;
typedef enum Quantities {one,two,three} quantity;

@interface Card : NSObject{
     int _cardId;
     color _elementColor;
     shape _elementShape;
     quantity _elementQuantity;
     filler _elementFiller;
}

- (instancetype)initWithColor:(color) color andShape:(shape) shape andQuantity:(quantity) quantity andFiller:(filler) filler;

- (color)elementColor;

- (shape)elementShape;

- (quantity)elementQuantity;

- (filler)elementFiller;

@end