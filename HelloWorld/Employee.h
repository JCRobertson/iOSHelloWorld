//
//  Employee.h
//  HelloWorld
//
//  Created by James Robertson on 6/5/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, assign) int favorite_number;

@end
