//
//  GameRules.h
//  SET
//
//  Created by ifund IT WH on 15/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface GameRule : NSObject

+ (NSMutableArray*)createAPackOfCards;

+ (BOOL)checkSET:(NSMutableArray*)chosen3Card;

@end
