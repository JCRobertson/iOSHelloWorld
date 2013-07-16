//
//  AppDelegate.m
//  HelloWorld
//
//  Created by James Robertson on 6/4/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import "AppDelegate.h"
#import "Employee.h"
#import "EmployeeTableViewController.h"

@implementation AppDelegate

@synthesize employees;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    employees = [NSMutableArray arrayWithCapacity:20];
	Employee *employee = [[Employee alloc] init];
	employee.name = @"Bill";
	employee.position = @"President";
	employee.favorite_number = 5;
	[employees addObject:employee];
	employee = [[Employee alloc] init];
	employee.name = @"Oscar";
	employee.position = @"Vice President";
	employee.favorite_number = 4;
	[employees addObject:employee];
	employee = [[Employee alloc] init];
	employee.name = @"Dave";
	employee.position = @"Code Monkey";
	employee.favorite_number = 2;
	[employees addObject:employee];
    employee = [[Employee alloc] init];
	employee.name = @"John";
	employee.position = @"Manager";
	employee.favorite_number = 3;
	[employees addObject:employee];
    employee = [[Employee alloc] init];
	employee.name = @"Tom";
	employee.position = @"Intern";
	employee.favorite_number = 1;
	[employees addObject:employee];
    
//    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
//    
//    UIViewController *viewController = [[navController viewControllers] objectAtIndex:0];
//    
//	UITabBarController *tabBarController = [[viewController tabBar] objectAtIndex:0];  //TODO What should I do here?
//    
//	UINavigationController *navigationController = [[tabBarController viewControllers] objectAtIndex:0];
//    
//	TableViewController *employeesViewController = [[navigationController viewControllers] objectAtIndex:0];
//    
//	employeesViewController.employees = employees;
    return YES;

}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. positions should use this method to pause the position.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
