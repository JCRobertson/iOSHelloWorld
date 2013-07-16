//
//  TableViewController.h
//  HelloWorld
//
//  Created by James Robertson on 6/5/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEmployeeViewController.h"

@interface EmployeeTableViewController : UITableViewController <TableDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *employees;

@end
