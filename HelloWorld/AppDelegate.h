//
//  AppDelegate.h
//  HelloWorld
//
//  Created by James Robertson on 6/4/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmployeeTableViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) EmployeeTableViewController *tvc;

@property (nonatomic, strong) NSMutableArray *employees;

@end
