//
//  MainController.m
//  SET
//
//  Created by ifund IT WH on 5/12/14.
//  Copyright (c) 2014 张瑞. All rights reserved.
//

#import "MainController.h"

@interface MainController ()

@property (nonatomic,weak) IBOutlet UILabel *testLabel;


@end

@implementation MainController

- (void)viewDidLoad{
    cardManager = [CardManager sharedManager];
    cardDivide = (self.view.frame.size.width - 240)/5;
    self.view.backgroundColor = [UIColor grayColor];
    [self initDisplayCards];
    [super viewDidLoad];
}

- (IBAction)iAmClicked:(id)sender{
    self.testLabel.text=@"I am clicked";
    
}

- (void)initDisplayCards{
    NSMutableArray *displayedCard=[cardManager getInitiallyDisplayedCards];
    for (int i=0; i<12; i++) {
        CardView *cardView = [[CardView alloc] initWithCard:displayedCard[i]];
        cardView.frame = CGRectMake(cardDivide+fmodf(i, 4.0f)*(cardView.frame.size.width+cardDivide), 40+(i/4)*(20+cardView.frame.size.height), 60, 90);
        
        [self.view addSubview:cardView];
    }
}

@end
