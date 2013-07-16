//
//  TableViewController.m
//  HelloWorld
//
//  Created by James Robertson on 6/5/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import "EmployeeTableViewController.h"
#import "Employee.h"
#import "AppDelegate.h"
#import "EmployeeCell.h"

@interface EmployeeTableViewController ()

@end

@implementation EmployeeTableViewController

@synthesize employees;

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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    AppDelegate *delegate = (AppDelegate *)([UIApplication sharedApplication]).delegate;
    self.employees = delegate.employees;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.employees count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Configure the cell...
    
    EmployeeCell *cell = (EmployeeCell *)[tableView dequeueReusableCellWithIdentifier:@"EmployeeCell"];

    Employee *employee = [self.employees objectAtIndex:indexPath.row];
    cell.nameLabel.text = employee.name;
    cell.positionLabel.text = employee.position;
    cell.favoriteNumberImageView.image = [self imageForRating:employee.favorite_number];
    
    
    return cell;
}

- (UIImage *)imageForRating:(int)rating{
    switch (rating) {
        case 1:
            return [UIImage imageNamed:@"1StarSmall.png"];

        case 2:
            return [UIImage imageNamed:@"2StarsSmall.png"];

        case 3:
            return [UIImage imageNamed:@"3StarsSmall.png"];

        case 4:
            return [UIImage imageNamed:@"4StarsSmall.png"];

        case 5:
            return [UIImage imageNamed:@"5StarsSmall.png"];
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete){
        [self.employees removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"AddEmployee"])
	{
        //crawl to delegate
        //alternative, from child call dismissViewControllerAnimated:completion: on  self.parentViewController
		UINavigationController *navigationController =
        segue.destinationViewController;
		AddEmployeeViewController
        *tableDetailsViewController =
        [[navigationController viewControllers]
         objectAtIndex:0];
		tableDetailsViewController.delegate = self;
	}
}

#pragma mark - TableDetailsViewControllerDelegate

- (void)tableDetailsViewControllerDidCancel:
(AddEmployeeViewController *)controller
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)tableDetailsViewControllerDidSave:
(AddEmployeeViewController *)controller
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)tableDetailsViewController:(AddEmployeeViewController *)controller didAddEmployee:(Employee *)e {
	[self.employees addObject:e];
    
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:[self.employees count] - 1 inSection:0];
    
	[self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]withRowAnimation:UITableViewRowAnimationAutomatic];
    
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end
