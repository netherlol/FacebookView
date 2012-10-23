//
//  NavigationViewController.m
//  Playground
//
//  Created by Mobile Team (G4M) on 10/23/12.
//  Copyright (c) 2012 Lin Gang Xuan. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()
@property (nonatomic) int state;

@end

@implementation NavigationViewController

-(void)redChildClicked
{
    [self.delegatee redChildClicked];
}

-(void)move
{
    if (self.state == 0) {
        [self swipeRight];
    }else{
        [self swipeleft];
    }
}

-(void)swipe:(int)Y
{
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         self.view.frame = CGRectMake(Y, 0, self.view.frame.size.width, self.view.frame.size.height);
                     } completion:^(BOOL fin){}];
    [self changeState];
}

-(void)swipeRight
{
    [self swipe:270];
}

-(void)swipeleft
{
    [self swipe:0];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self inicializeSate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)inicializeSate
{
    self.state = 0;
}

-(void)changeState
{
    if (self.state == 0) {
        self.state = 1;
    }else
        self.state = 0;
}

@end
