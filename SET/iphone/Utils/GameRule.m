//
//  GameRules.m
//  SET
//
//  Created by ifund IT WH on 15/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import "GameRule.h"

@implementation GameRule

+ (NSMutableArray*)createAPackOfCards{
    NSMutableArray *packOfCards = [[NSMutableArray alloc] init];
    for (int c = 0; c < 3; c++) {
        for (int s = 0; s < 3; s++) {
            for (int q = 1; q < 4; q++) {
                for (int f = 0; f < 3; f++) {
                    [packOfCards addObject:[[Card alloc] initWithColor:c andShape:s andQuantity:q andFiller:f]];
                }
            }
        }
    }
    return packOfCards;
}

+ (BOOL)checkSET:(NSMutableArray *)chosen3Card{
    return YES;
}

@end


