//
//  Appointment.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Appointment : NSObject

@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *post;
@property (strong, nonatomic) NSString *office;
@property (strong, nonatomic) NSString *hospital;
@property (strong, nonatomic) UIImage *image;

@end
