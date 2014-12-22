//
//  CardView.m
//  SET
//
//  Created by ifund IT WH on 10/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardView.h"

@interface CardView ()

@end

@implementation CardView

- (instancetype)initWithCard:(Card *)newCard{
    self = [super init];
    _currentCard = newCard;
    [self initUI];
    return self;
}

- (void)initSizeWithWidth:(CGFloat)width andHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size = CGSizeMake(width, height);
    self.frame = frame;
}

- (void)initUI{
    [self initSizeWithWidth:60 andHeight:90];
    self.backgroundColor = [UIColor whiteColor];
}

- (void)drawRect: (CGRect) rect{
    
    CGContextRef context= UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    int eH=15;//element height
    int eW=40;//element width
    int eD=10;//element divide
    
    [[self getColor:self.currentCard.elementColor] set];
    float alpha = [self getAlpha:self.currentCard.elementFiller];
    int q = self.currentCard.elementQuantity;
    
    for (int i=0;i<q ; i++) {
        switch (self.currentCard.elementShape) {
            case rectangle: {
                CGRect drawRect=CGRectMake(10, (90 - q * eH - (q - 1) * eD) / 2 + i*(eH+eD), eW,eH);
                CGContextStrokeRect(context, drawRect);
                CGContextSetAlpha(context, alpha);
                CGContextFillRect(context, drawRect);
                CGContextSetAlpha(context, 1);
            }
                break;
            case eclipse: {
                CGRect drawRect=CGRectMake(10, (90 - q * eH - (q - 1) * eD) / 2 + i*(eH+eD), eW,eH);
                CGContextStrokeEllipseInRect(context, drawRect);
                CGContextSetAlpha(context, alpha);
                CGContextFillEllipseInRect(context, drawRect);
                CGContextSetAlpha(context, 1);
            }
                break;
            case wave:{
                CGRect drawRect=CGRectMake(10, (90 - q * eH - (q - 1) * eD) / 2 + i*(eH+eD), eW,eH);
                [self CGContextStrokeWaveInRect:context withRect:drawRect];
            }
                break;
        }
        
    }
}

- (void)CGContextStrokeWaveInRect:(CGContextRef) context withRect:(CGRect) rect{
    CGFloat p1StartX=rect.origin.x+rect.size.width*3/5;
    CGFloat p1StartY=rect.origin.y+rect.size.height/5;
    CGFloat p1ControlX=rect.origin.x +rect.size.width;
    CGFloat p1ControlY=rect.origin.y-rect.size.height*3/5;
    CGFloat p1EndX=rect.origin.x+rect.size.width;
    CGFloat p1EndY=rect.origin.y+rect.size.height/5;
    
    CGFloat p2ControlX=rect.origin.x+rect.size.width;
    CGFloat p2ControlY=rect.origin.y+rect.size.height;
    CGContextMoveToPoint(context, p1StartX, p1StartY);
    
    CGContextAddQuadCurveToPoint(context, p1ControlX, p1ControlY,p1EndX, p1EndY);
    //CGContextAddCurveToPoint(context, rect.origin.x+rect.size.width, rect.origin.y+rect.size.height*3/5, rect.origin.x+rect.size.width*5/8, rect.origin.y+rect.size.height, rect.origin.x+rect.size.width/2, rect.origin.y+rect.size.height*4/5);
    CGContextAddQuadCurveToPoint(context, p2ControlX, p2ControlY, rect.origin.x+rect.size.width*2/5, rect.origin.y +rect.size.height*4/5);
    
    CGContextStrokePath(context);
    
}

- (float)getAlpha:(filler) filler{
    switch (filler) {
        case empty:
            return 0;
            break;
        case lines:
            return 0.2;
            break;
        case full:
            return 1;
            break;
    }
}

- (UIColor*)getColor:(color) color{
    switch (color) {
        case red:
            return [UIColor redColor];
            break;
            case green:
            return [UIColor greenColor];
            break;
            case perple:
            return [UIColor purpleColor];
            break;
    }
}

- (void)setCurrentCard:(Card *)currentCard{
    _currentCard = currentCard;
    [self setNeedsDisplay];
}

- (Card*)currentCard{
    return _currentCard;
}

@end