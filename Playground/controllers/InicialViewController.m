//
//  InicialViewController.m
//  Playground
//
//  Created by Lin Gang Xuan on 10/23/12.
//  Copyright (c) 2012 Lin Gang Xuan. All rights reserved.
//

#import "InicialViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"
#import "NavigationViewController.h"

@interface InicialViewController ()
@property (nonatomic,strong) NavigationViewController* nav;
@end

@implementation InicialViewController


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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    UIStoryboard *storyboard;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        storyboard = [UIStoryboard storyboardWithName:@"iPhone" bundle:nil];
    } else if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        storyboard = [UIStoryboard storyboardWithName:@"iPad" bundle:nil];
    }
    
     BlueViewController *controllerr = [storyboard instantiateViewControllerWithIdentifier:@"blue"];
    [self addControllerToParentView:controllerr];
    controllerr.delegate = self;
    
    NavigationViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"rednav"];
    [self addControllerToParentView:controller];
    self.nav = controller;
    controller.delegatee = self;

}

-(void)addControllerToParentView:(UIViewController*)controller
{
    [self addChildViewController:controller];
    [controller didMoveToParentViewController:self];
    
    [controller.view setAutoresizingMask:self.autoResizeToFillScreen];
    [controller.view setFrame:self.view.bounds];
    
    [self.view addSubview:controller.view];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)redChildClicked
{
    NSLog(@"My red child was clicked");
}


-(void)blueChildClickedAButton{
    NSLog(@"my blue child clicked a button");
    [self.nav move];
    
}

- (NSUInteger)autoResizeToFillScreen
{
    return (UIViewAutoresizingFlexibleWidth |
            UIViewAutoresizingFlexibleHeight |
            UIViewAutoresizingFlexibleTopMargin |
            UIViewAutoresizingFlexibleBottomMargin |
            UIViewAutoresizingFlexibleLeftMargin |
            UIViewAutoresizingFlexibleRightMargin);
}

@end
