//
//  BlueViewController.h
//  Playground
//
//  Created by Lin Gang Xuan on 10/23/12.
//  Copyright (c) 2012 Lin Gang Xuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "comunicationChildParent.h"

@interface BlueViewController : UIViewController
@property (nonatomic,strong) id<comunicationChildParent> delegate;
@end
