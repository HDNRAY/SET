//
//  CardManager.h
//  SET
//
//  Created by ifund IT WH on 15/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameRule.h"

@interface CardManager : NSObject

@property NSMutableArray *packOfCards;

+ (instancetype)sharedManager;

- (NSMutableArray*)getInitiallyDisplayedCards;

- (NSMutableArray*)getAnother3Cards;
@end
