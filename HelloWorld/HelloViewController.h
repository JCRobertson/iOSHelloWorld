//
//  ViewController.h
//  HelloWorld
//
//  Created by James Robertson on 6/4/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloViewController : UIViewController <UITextFieldDelegate>

- (IBAction)changeGreeting:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (copy, nonatomic) NSString *userName;

@property (weak, nonatomic) IBOutlet UILabel *description;



@end
