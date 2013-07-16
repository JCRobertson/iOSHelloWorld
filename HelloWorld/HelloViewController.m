//
//  ViewController.m
//  HelloWorld
//
//  Created by James Robertson on 6/4/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import "HelloViewController.h"

@interface HelloViewController ()

@end

@implementation HelloViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if(theTextField == self.textField){
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)changeGreeting:(id)sender {
    
    self.userName = self.textField.text;
    
    if([self.userName length] == 0){
        self.userName = @"Unknown User";
    }
    [self makeDescription];
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", self.userName];
    
    self.label.text = greeting;

}

- (void)makeDescription{

    int randNum = rand();
    NSString *emotion;

    if (randNum%2==0)
        emotion = @"happy";
    else if (randNum%3==0)
        emotion = @"sad";
    else if (randNum%5==0)
        emotion = @"angry";
    else
        emotion = @"confused";
    
    NSString *d = [[NSString alloc] initWithFormat:@"%@ has randomly decided to be very %@ today.", self.userName, emotion];
    
    self.description.text = d;
}


@end
