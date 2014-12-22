//
//  CardManager.m
//  SET
//
//  Created by ifund IT WH on 15/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import "CardManager.h"

@implementation CardManager

+ (instancetype)sharedManager{
    static CardManager *sharedManager =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

- (instancetype)init{
    if (self = [super init]) {
        self.packOfCards=[GameRule createAPackOfCards];
    }
    return self;
}

- (NSMutableArray*)randomlyDrawCardsWithQuantity:(int)number{
    NSMutableArray *drawnCards=[[NSMutableArray alloc] init];
    int index =arc4random()%(self.packOfCards.count-1);
    for (int i=0; i<number; i++) {
        [drawnCards addObject:self.packOfCards[index]];
        [self.packOfCards removeObjectAtIndex:index];
        index = arc4random()%(self.packOfCards.count-1);
    }
    return drawnCards;
}

- (NSMutableArray*)getAnother3Cards{
    return [self randomlyDrawCardsWithQuantity:3];
}

- (NSMutableArray*)getInitiallyDisplayedCards{
    return [self randomlyDrawCardsWithQuantity:12];
}

@end
