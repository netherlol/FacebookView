//
//  NavigationViewController.h
//  Playground
//
//  Created by Mobile Team (G4M) on 10/23/12.
//  Copyright (c) 2012 Lin Gang Xuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "comunicationChildParent.h"

@interface NavigationViewController : UINavigationController
-(void)move;
-(void)redChildClicked;
@property (nonatomic,strong) id<comunicationChildParent> delegatee;
@end
