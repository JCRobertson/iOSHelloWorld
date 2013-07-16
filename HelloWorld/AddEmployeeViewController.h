//
//  TableDetailsViewController.h
//  HelloWorld
//
//  Created by James Robertson on 6/6/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Employee.h"
#import "PositionPickerViewController.h"

@class AddEmployeeViewController;

@protocol TableDetailsViewControllerDelegate <NSObject>
- (void)tableDetailsViewControllerDidCancel:
(AddEmployeeViewController *)controller;
- (void)tableDetailsViewControllerDidSave:
(AddEmployeeViewController *)controller;
- (void)tableDetailsViewController:
(AddEmployeeViewController *)controller didAddEmployee:(Employee *)e;
@end

@interface AddEmployeeViewController : UITableViewController <PositionPickerViewControllerDelegate>

@property (nonatomic, weak) id <TableDetailsViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITableViewCell *detailLabel;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end
