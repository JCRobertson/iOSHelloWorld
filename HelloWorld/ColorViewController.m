//
//  ColorViewController.m
//  HelloWorld
//
//  Created by James Robertson on 6/5/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController
@synthesize redSlider;
@synthesize toggle;
@synthesize redLabel;
@synthesize blueLabel;
@synthesize blueSlider;
@synthesize greenLabel;
@synthesize greenSlider;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.isColor = TRUE;
    self.view.backgroundColor = [UIColor blackColor];
    self.redLabel.text = [NSString stringWithFormat:@"%.f", self.redSlider.value*100];
    self.blueLabel.text = [NSString stringWithFormat:@"%.f", self.blueSlider.value*100];
    self.greenLabel.text = [NSString stringWithFormat:@"%.f", self.greenSlider.value*100];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeColor:(id)sender {
    if (!self.isColor) {
        return;
    }
    self.redLabel.text = [NSString stringWithFormat:@"%.f", self.redSlider.value*100];
    self.blueLabel.text = [NSString stringWithFormat:@"%.f", self.blueSlider.value*100];
    self.greenLabel.text = [NSString stringWithFormat:@"%.f", self.greenSlider.value*100];
    CGFloat red = redSlider.value;
    CGFloat green = greenSlider.value;
    CGFloat blue = blueSlider.value;
    self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}

- (IBAction)hideColor:(id)sender {
    if(self.isColor){
        self.isColor = FALSE;
        self.view.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
        [self.redLabel setHidden:TRUE];
        [self.redSlider setHidden:TRUE];
        [self.blueLabel setHidden:TRUE];
        [self.blueSlider setHidden:TRUE];
        [self.greenSlider setHidden:TRUE];
        [self.greenLabel setHidden:TRUE];
        [self.redID setHidden:TRUE];
        [self.blueID setHidden:TRUE];
        [self.greenID setHidden:TRUE];
    }
    else{
        self.isColor = TRUE;
        [self changeColor:nil];
        [self.redLabel setHidden:FALSE];
        [self.redSlider setHidden:FALSE];
        [self.blueLabel setHidden:FALSE];
        [self.blueSlider setHidden:FALSE];
        [self.greenSlider setHidden:FALSE];
        [self.greenLabel setHidden:FALSE];
        [self.redID setHidden:FALSE];
        [self.blueID setHidden:FALSE];
        [self.greenID setHidden:FALSE];
    }
        

}

@end
