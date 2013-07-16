//
//  PositionPickerViewController.h
//  HelloWorld
//
//  Created by James Robertson on 6/6/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PositionPickerViewController;

@protocol PositionPickerViewControllerDelegate <NSObject>
- (void)postionPickerViewController:(PositionPickerViewController *)controller didSelectPosition:(NSString *)thePosition;
@end


@interface PositionPickerViewController : UITableViewController

@property (nonatomic, weak) id <PositionPickerViewControllerDelegate> delegate;
@property (nonatomic, weak) NSString *position;


@end
