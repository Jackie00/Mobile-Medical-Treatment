//
//  ConsultDoctorCell.m
//  Mobile Medical Treatment
//
//  Created by appel on 15/9/17.
//  Copyright (c) 2015年 appel. All rights reserved.
//

#import "ConsultDoctorCell.h"

@implementation ConsultDoctorCell

- (void)awakeFromNib {
    // Initialization code
    _view.layer.borderColor = [UIColor orangeColor].CGColor;
    _view.layer.borderWidth = 1.0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
