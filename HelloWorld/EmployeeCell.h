//
//  EmployeeCell.h
//  HelloWorld
//
//  Created by James Robertson on 6/5/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployeeCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *positionLabel;
@property (nonatomic, strong) IBOutlet UIImageView *favoriteNumberImageView;

@end
