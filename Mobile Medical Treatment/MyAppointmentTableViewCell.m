//
//  MyAppointmentTableViewCell.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/14.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "MyAppointmentTableViewCell.h"

@implementation MyAppointmentTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
//    
//    return self;
//
//}
//
+ (UIImage *)scale:(UIImage *)image toSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}
//
//- (void)setAppointment:(Appointment *)appointment
//{
//    if (appointment != _appointment) {
//        _appointment = appointment;
//        self.time.text = _appointment.time;
//        self.name.text = _appointment.name;
//        self.post.text = _appointment.post;
//        self.office.text = _appointment.office;
//        self.hospital.text = _appointment.hospital;
//        self.image.image = [MyAppointmentTableViewCell scale:_appointment.image toSize:CGSizeMake(30, 30)];
//    }
//}

@end
