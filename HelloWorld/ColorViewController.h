//
//  ColorViewController.h
//  HelloWorld
//
//  Created by James Robertson on 6/5/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorViewController : UIViewController



@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *toggle;
@property (nonatomic) Boolean isColor;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *redID;
@property (weak, nonatomic) IBOutlet UILabel *blueID;
@property (weak, nonatomic) IBOutlet UILabel *greenID;


- (IBAction)hideColor:(id)sender;
- (IBAction)changeColor:(id)sender;





@end
