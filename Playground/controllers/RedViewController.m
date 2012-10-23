//
//  RedViewController.m
//  Playground
//
//  Created by Lin Gang Xuan on 10/23/12.
//  Copyright (c) 2012 Lin Gang Xuan. All rights reserved.
//

#import "RedViewController.h"
#import "NavigationViewController.h"

@interface RedViewController ()
@end

@implementation RedViewController

- (IBAction)RedButtonclicked:(UIBarButtonItem *)sender {
    NSLog(@"red button clicked");
    NavigationViewController *nav = (NavigationViewController*)self.navigationController;
    [nav redChildClicked];
    [nav move];
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
