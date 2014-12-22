//
//  MainController.h
//  SET
//
//  Created by ifund IT WH on 5/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"
#import "CardView.h"
#import "CardManager.h"

@interface MainController : UIViewController{
    CardManager *cardManager;
    float cardDivide;
}

@end
