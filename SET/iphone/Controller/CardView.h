//
//  Header.h
//  SET
//
//  Created by ifund IT WH on 10/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Constants.h"
#import "Card.h"

@interface CardView :UIView{
    Card* _currentCard;
}

@property Card *currentCard;
@property BOOL isSelected;

- (instancetype)initWithCard:(Card *)newCard;

@end