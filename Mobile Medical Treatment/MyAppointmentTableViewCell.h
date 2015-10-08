//
//  MyAppointmentTableViewCell.h
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Appointment.h"

@interface MyAppointmentTableViewCell : UITableViewCell

//@property (strong, nonatomic) Appointment *appointment;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *post;
@property (weak, nonatomic) IBOutlet UILabel *office;
@property (weak, nonatomic) IBOutlet UILabel *hospital;

+ (UIImage *)scale:(UIImage *)image toSize:(CGSize)size;

@end
