//
//  TableDetailsViewController.m
//  HelloWorld
//
//  Created by James Robertson on 6/6/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import "AddEmployeeViewController.h"

@interface AddEmployeeViewController ()

@end

@implementation AddEmployeeViewController{
    NSString *position;
}

@synthesize delegate;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailLabel.textLabel.text = position;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        [self.nameTextField becomeFirstResponder];
    }
}

- (IBAction)cancel:(id)sender
{
	[self.delegate tableDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{
    Employee *e = [[Employee alloc] init];
    e.name = self.nameTextField.text;
    e.position = position;
    e.favorite_number = 1;
	[self.delegate tableDetailsViewController:self didAddEmployee:e];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"PickPosition"]) {
        PositionPickerViewController *positionPickerVC = segue.destinationViewController;
        positionPickerVC.delegate = self;
        positionPickerVC.position = position;
    }
}
#pragma mark - PositionPickerViewControllerDelegate

-(void)postionPickerViewController:(PositionPickerViewController *)controller didSelectPosition:(NSString *)thePosition {
    position = thePosition;
    self.detailLabel.textLabel.text = position;
    [self.navigationController popViewControllerAnimated:YES];
}

@end
